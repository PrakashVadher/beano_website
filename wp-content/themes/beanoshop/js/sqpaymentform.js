
// Set the application ID
var applicationId = "sandbox-sq0idb-203QopUroYryTNVANwzqcA";

// Set the location ID
var locationId = "L8R2V1HCAP2PQ";


function buildForm(form) {
  if (SqPaymentForm.isSupportedBrowser()) {
    form.build();
    form.recalculateSize();
  }

}

function buildForm1() {
    if (SqPaymentForm.isSupportedBrowser()) {
      var paymentDiv = document.getElementById("form-container");
      if (paymentDiv.style.display === "none") {
          paymentDiv.style.display = "block";
      }
      paymentform.build();
      paymentform.recalculateSize();
    } else {
      // Show a "Browser is not supported" message to your buyer
    }
    
  }
/*
 * function: requestCardNonce
 *
 * requestCardNonce is triggered when the "Pay with credit card" button is
 * clicked
 *
 * Modifying this function is not required, but can be customized if you
 * wish to take additional action when the form button is clicked.
 */
function requestCardNonce(event) {

  // Don't submit the form until SqPaymentForm returns with a nonce
  event.preventDefault();

  // Request a nonce from the SqPaymentForm object
  paymentForm.requestCardNonce();
}

// Create and initialize a payment form object
var paymentForm = new SqPaymentForm({

  // Initialize the payment form elements
  applicationId: applicationId,
  locationId: locationId,
  inputClass: 'sq-input',
  autoBuild: false,
  postalCode : false,

  // Customize the CSS for SqPaymentForm iframe elements
  inputStyles: [{
    fontSize: '16px',
    // fontFamily: 'Helvetica Neue',
    //padding: '16px',
    color: '#373F4A',
    backgroundColor: 'transparent',
    //lineHeight: '24px',
    placeholderColor: '#CCC',
    _webkitFontSmoothing: 'antialiased',
    _mozOsxFontSmoothing: 'grayscale'
  }],

  // Initialize Apple Pay placeholder ID
  applePay: false,

  // Initialize Masterpass placeholder ID
  masterpass: false,

  // Initialize the credit card placeholders
  cardNumber: {
    elementId: 'sq-card-number',
    placeholder: 'Card Number'
  },
  cvv: {
    elementId: 'sq-cvv',
    placeholder: 'CVV'
  },
  expirationDate: {
    elementId: 'sq-expiration-date',
    placeholder: 'MM/YY'
  },
  // postalCode: {
  //   elementId: 'sq-postal-code',
  //   placeholder: '12345'
  // },

  // SqPaymentForm callback functions
  callbacks: {
    /*
     * callback function: createPaymentRequest
     * Triggered when: a digital wallet payment button is clicked.
     * Replace the JSON object declaration with a function that creates
     * a JSON object with Digital Wallet payment details
     */
    createPaymentRequest: function () {

      return {
        requestShippingAddress: false,
        requestBillingInfo: true,
        // currencyCode: "USD",
        // countryCode: "US",
        // total: {
        //   label: "MERCHANT NAME",
        //   amount: "100",
        //   pending: false
        // },
        // lineItems: [
        //   {
        //     label: "Subtotal",
        //     amount: "100",
        //     pending: false
        //   }
        // ]
      }
    },

    /*
     * callback function: cardNonceResponseReceived
     * Triggered when: SqPaymentForm completes a card nonce request
     */
    cardNonceResponseReceived: function (errors, nonce, cardData) {
      if (errors) {
        // Log errors from nonce generation to the Javascript console
        console.log("Encountered errors:");
        $('#spinner').hide();

        errors.forEach(function (error) {
          console.log(' er= ' + error.message);
          alert(error.message);
        });
        showPaymentSection();
        return;
      }
      // Assign the nonce value to the hidden form field
      document.getElementById('card-nonce').value = nonce;
      // POST the nonce form to the payment processing page
      if(nonce){
          $.ajax({
            url : 'square-payment',
            type: "POST",
            dataType: 'json',
            data: $('#frm-customer-details').serialize(),
            success:function(result){                
                console.log(result.data);
                if(result.status == 'false'){
                    alert(result.message);
                    $('#spinner').hide();
                    return false;  
                }
                order_id = result.last_id;
                $('#order-id').val(order_id);
                
                document.getElementById('frm-customer-details').submit();
            }
          });
      }
      //return false;
      //document.getElementById('frm-customer-details').submit();

    },

    /*
     * callback function: unsupportedBrowserDetected
     * Triggered when: the page loads and an unsupported browser is detected
     */
    unsupportedBrowserDetected: function () {
      /* PROVIDE FEEDBACK TO SITE VISITORS */
      alert('Unsupported by the browser. Please try on another browser.');
      return false;
    },

    /*
     * callback function: inputEventReceived
     * Triggered when: visitors interact with SqPaymentForm iframe elements.
     */
    inputEventReceived: function (inputEvent) {
      switch (inputEvent.eventType) {
        case 'focusClassAdded':
          /* HANDLE AS DESIRED */
          break;
        case 'focusClassRemoved':
          /* HANDLE AS DESIRED */
          break;
        case 'errorClassAdded':
          document.getElementById("error").innerHTML = "Please fix card information errors before continuing.";
          break;
        case 'errorClassRemoved':
          /* HANDLE AS DESIRED */
          document.getElementById("error").style.display = "none";
          break;
        case 'cardBrandChanged':
          /* HANDLE AS DESIRED */
          break;
        case 'postalCodeChanged':
          /* HANDLE AS DESIRED */
          break;
      }
    },

    /*
     * callback function: paymentFormLoaded
     * Triggered when: SqPaymentForm is fully loaded
     */
    paymentFormLoaded: function () {
      /* HANDLE AS DESIRED */
      $('#spinner').hide();
      console.log("The form loaded!");
    }
  }
});
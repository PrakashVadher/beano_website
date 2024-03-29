<?php

declare(strict_types=1);

namespace Square\Models;

/**
 * Represents a dispute a cardholder initiated with their bank.
 */
class Dispute implements \JsonSerializable
{
    /**
     * @var string|null
     */
    private $disputeId;

    /**
     * @var string|null
     */
    private $id;

    /**
     * @var Money|null
     */
    private $amountMoney;

    /**
     * @var string|null
     */
    private $reason;

    /**
     * @var string|null
     */
    private $state;

    /**
     * @var string|null
     */
    private $dueAt;

    /**
     * @var DisputedPayment|null
     */
    private $disputedPayment;

    /**
     * @var string[]|null
     */
    private $evidenceIds;

    /**
     * @var string|null
     */
    private $cardBrand;

    /**
     * @var string|null
     */
    private $createdAt;

    /**
     * @var string|null
     */
    private $updatedAt;

    /**
     * @var string|null
     */
    private $brandDisputeId;

    /**
     * @var string|null
     */
    private $reportedDate;

    /**
     * @var string|null
     */
    private $reportedAt;

    /**
     * @var int|null
     */
    private $version;

    /**
     * @var string|null
     */
    private $locationId;

    /**
     * Returns Dispute Id.
     *
     * The unique ID for this `Dispute`, generated by Square.
     */
    public function getDisputeId(): ?string
    {
        return $this->disputeId;
    }

    /**
     * Sets Dispute Id.
     *
     * The unique ID for this `Dispute`, generated by Square.
     *
     * @maps dispute_id
     */
    public function setDisputeId(?string $disputeId): void
    {
        $this->disputeId = $disputeId;
    }

    /**
     * Returns Id.
     *
     * The unique ID for this `Dispute`, generated by Square.
     */
    public function getId(): ?string
    {
        return $this->id;
    }

    /**
     * Sets Id.
     *
     * The unique ID for this `Dispute`, generated by Square.
     *
     * @maps id
     */
    public function setId(?string $id): void
    {
        $this->id = $id;
    }

    /**
     * Returns Amount Money.
     *
     * Represents an amount of money. `Money` fields can be signed or unsigned.
     * Fields that do not explicitly define whether they are signed or unsigned are
     * considered unsigned and can only hold positive amounts. For signed fields, the
     * sign of the value indicates the purpose of the money transfer. See
     * [Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-
     * monetary-amounts)
     * for more information.
     */
    public function getAmountMoney(): ?Money
    {
        return $this->amountMoney;
    }

    /**
     * Sets Amount Money.
     *
     * Represents an amount of money. `Money` fields can be signed or unsigned.
     * Fields that do not explicitly define whether they are signed or unsigned are
     * considered unsigned and can only hold positive amounts. For signed fields, the
     * sign of the value indicates the purpose of the money transfer. See
     * [Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-
     * monetary-amounts)
     * for more information.
     *
     * @maps amount_money
     */
    public function setAmountMoney(?Money $amountMoney): void
    {
        $this->amountMoney = $amountMoney;
    }

    /**
     * Returns Reason.
     *
     * The list of possible reasons why a cardholder might initiate a
     * dispute with their bank.
     */
    public function getReason(): ?string
    {
        return $this->reason;
    }

    /**
     * Sets Reason.
     *
     * The list of possible reasons why a cardholder might initiate a
     * dispute with their bank.
     *
     * @maps reason
     */
    public function setReason(?string $reason): void
    {
        $this->reason = $reason;
    }

    /**
     * Returns State.
     *
     * The list of possible dispute states.
     */
    public function getState(): ?string
    {
        return $this->state;
    }

    /**
     * Sets State.
     *
     * The list of possible dispute states.
     *
     * @maps state
     */
    public function setState(?string $state): void
    {
        $this->state = $state;
    }

    /**
     * Returns Due At.
     *
     * The time when the next action is due, in RFC 3339 format.
     */
    public function getDueAt(): ?string
    {
        return $this->dueAt;
    }

    /**
     * Sets Due At.
     *
     * The time when the next action is due, in RFC 3339 format.
     *
     * @maps due_at
     */
    public function setDueAt(?string $dueAt): void
    {
        $this->dueAt = $dueAt;
    }

    /**
     * Returns Disputed Payment.
     *
     * The payment the cardholder disputed.
     */
    public function getDisputedPayment(): ?DisputedPayment
    {
        return $this->disputedPayment;
    }

    /**
     * Sets Disputed Payment.
     *
     * The payment the cardholder disputed.
     *
     * @maps disputed_payment
     */
    public function setDisputedPayment(?DisputedPayment $disputedPayment): void
    {
        $this->disputedPayment = $disputedPayment;
    }

    /**
     * Returns Evidence Ids.
     *
     * The IDs of the evidence associated with the dispute.
     *
     * @return string[]|null
     */
    public function getEvidenceIds(): ?array
    {
        return $this->evidenceIds;
    }

    /**
     * Sets Evidence Ids.
     *
     * The IDs of the evidence associated with the dispute.
     *
     * @maps evidence_ids
     *
     * @param string[]|null $evidenceIds
     */
    public function setEvidenceIds(?array $evidenceIds): void
    {
        $this->evidenceIds = $evidenceIds;
    }

    /**
     * Returns Card Brand.
     *
     * Indicates a card's brand, such as `VISA` or `MASTERCARD`.
     */
    public function getCardBrand(): ?string
    {
        return $this->cardBrand;
    }

    /**
     * Sets Card Brand.
     *
     * Indicates a card's brand, such as `VISA` or `MASTERCARD`.
     *
     * @maps card_brand
     */
    public function setCardBrand(?string $cardBrand): void
    {
        $this->cardBrand = $cardBrand;
    }

    /**
     * Returns Created At.
     *
     * The timestamp when the dispute was created, in RFC 3339 format.
     */
    public function getCreatedAt(): ?string
    {
        return $this->createdAt;
    }

    /**
     * Sets Created At.
     *
     * The timestamp when the dispute was created, in RFC 3339 format.
     *
     * @maps created_at
     */
    public function setCreatedAt(?string $createdAt): void
    {
        $this->createdAt = $createdAt;
    }

    /**
     * Returns Updated At.
     *
     * The timestamp when the dispute was last updated, in RFC 3339 format.
     */
    public function getUpdatedAt(): ?string
    {
        return $this->updatedAt;
    }

    /**
     * Sets Updated At.
     *
     * The timestamp when the dispute was last updated, in RFC 3339 format.
     *
     * @maps updated_at
     */
    public function setUpdatedAt(?string $updatedAt): void
    {
        $this->updatedAt = $updatedAt;
    }

    /**
     * Returns Brand Dispute Id.
     *
     * The ID of the dispute in the card brand system, generated by the card brand.
     */
    public function getBrandDisputeId(): ?string
    {
        return $this->brandDisputeId;
    }

    /**
     * Sets Brand Dispute Id.
     *
     * The ID of the dispute in the card brand system, generated by the card brand.
     *
     * @maps brand_dispute_id
     */
    public function setBrandDisputeId(?string $brandDisputeId): void
    {
        $this->brandDisputeId = $brandDisputeId;
    }

    /**
     * Returns Reported Date.
     *
     * The timestamp when the dispute was reported, in RFC 3339 format.
     */
    public function getReportedDate(): ?string
    {
        return $this->reportedDate;
    }

    /**
     * Sets Reported Date.
     *
     * The timestamp when the dispute was reported, in RFC 3339 format.
     *
     * @maps reported_date
     */
    public function setReportedDate(?string $reportedDate): void
    {
        $this->reportedDate = $reportedDate;
    }

    /**
     * Returns Reported At.
     *
     * The timestamp when the dispute was reported, in RFC 3339 format.
     */
    public function getReportedAt(): ?string
    {
        return $this->reportedAt;
    }

    /**
     * Sets Reported At.
     *
     * The timestamp when the dispute was reported, in RFC 3339 format.
     *
     * @maps reported_at
     */
    public function setReportedAt(?string $reportedAt): void
    {
        $this->reportedAt = $reportedAt;
    }

    /**
     * Returns Version.
     *
     * The current version of the `Dispute`.
     */
    public function getVersion(): ?int
    {
        return $this->version;
    }

    /**
     * Sets Version.
     *
     * The current version of the `Dispute`.
     *
     * @maps version
     */
    public function setVersion(?int $version): void
    {
        $this->version = $version;
    }

    /**
     * Returns Location Id.
     *
     * The ID of the location where the dispute originated.
     */
    public function getLocationId(): ?string
    {
        return $this->locationId;
    }

    /**
     * Sets Location Id.
     *
     * The ID of the location where the dispute originated.
     *
     * @maps location_id
     */
    public function setLocationId(?string $locationId): void
    {
        $this->locationId = $locationId;
    }

    /**
     * Encode this object to JSON
     *
     * @return mixed
     */
    public function jsonSerialize()
    {
        $json = [];
        $json['dispute_id']      = $this->disputeId;
        $json['id']              = $this->id;
        $json['amount_money']    = $this->amountMoney;
        $json['reason']          = $this->reason;
        $json['state']           = $this->state;
        $json['due_at']          = $this->dueAt;
        $json['disputed_payment'] = $this->disputedPayment;
        $json['evidence_ids']    = $this->evidenceIds;
        $json['card_brand']      = $this->cardBrand;
        $json['created_at']      = $this->createdAt;
        $json['updated_at']      = $this->updatedAt;
        $json['brand_dispute_id'] = $this->brandDisputeId;
        $json['reported_date']   = $this->reportedDate;
        $json['reported_at']     = $this->reportedAt;
        $json['version']         = $this->version;
        $json['location_id']     = $this->locationId;

        return array_filter($json, function ($val) {
            return $val !== null;
        });
    }
}

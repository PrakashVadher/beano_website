<?php

declare(strict_types=1);

namespace Square\Models;

/**
 * Represents additional details of a tender with `type` `CARD` or `SQUARE_GIFT_CARD`
 */
class TenderCardDetails implements \JsonSerializable
{
    /**
     * @var string|null
     */
    private $status;

    /**
     * @var Card|null
     */
    private $card;

    /**
     * @var string|null
     */
    private $entryMethod;

    /**
     * Returns Status.
     *
     * Indicates the card transaction's current status.
     */
    public function getStatus(): ?string
    {
        return $this->status;
    }

    /**
     * Sets Status.
     *
     * Indicates the card transaction's current status.
     *
     * @maps status
     */
    public function setStatus(?string $status): void
    {
        $this->status = $status;
    }

    /**
     * Returns Card.
     *
     * Represents the payment details of a card to be used for payments. These
     * details are determined by the payment token generated by Web Payments SDK.
     */
    public function getCard(): ?Card
    {
        return $this->card;
    }

    /**
     * Sets Card.
     *
     * Represents the payment details of a card to be used for payments. These
     * details are determined by the payment token generated by Web Payments SDK.
     *
     * @maps card
     */
    public function setCard(?Card $card): void
    {
        $this->card = $card;
    }

    /**
     * Returns Entry Method.
     *
     * Indicates the method used to enter the card's details.
     */
    public function getEntryMethod(): ?string
    {
        return $this->entryMethod;
    }

    /**
     * Sets Entry Method.
     *
     * Indicates the method used to enter the card's details.
     *
     * @maps entry_method
     */
    public function setEntryMethod(?string $entryMethod): void
    {
        $this->entryMethod = $entryMethod;
    }

    /**
     * Encode this object to JSON
     *
     * @return mixed
     */
    public function jsonSerialize()
    {
        $json = [];
        $json['status']      = $this->status;
        $json['card']        = $this->card;
        $json['entry_method'] = $this->entryMethod;

        return array_filter($json, function ($val) {
            return $val !== null;
        });
    }
}

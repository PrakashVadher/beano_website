<?php

declare(strict_types=1);

namespace Square\Models;

/**
 * A response that contains the loyalty program.
 */
class RetrieveLoyaltyProgramResponse implements \JsonSerializable
{
    /**
     * @var Error[]|null
     */
    private $errors;

    /**
     * @var LoyaltyProgram|null
     */
    private $program;

    /**
     * Returns Errors.
     *
     * Any errors that occurred during the request.
     *
     * @return Error[]|null
     */
    public function getErrors(): ?array
    {
        return $this->errors;
    }

    /**
     * Sets Errors.
     *
     * Any errors that occurred during the request.
     *
     * @maps errors
     *
     * @param Error[]|null $errors
     */
    public function setErrors(?array $errors): void
    {
        $this->errors = $errors;
    }

    /**
     * Returns Program.
     *
     * Represents a Square loyalty program. Loyalty programs define how buyers can earn points and redeem
     * points for rewards.
     * Square sellers can have only one loyalty program, which is created and managed from the Seller
     * Dashboard.
     * For more information, see [Loyalty Program Overview](https://developer.squareup.
     * com/docs/loyalty/overview).
     */
    public function getProgram(): ?LoyaltyProgram
    {
        return $this->program;
    }

    /**
     * Sets Program.
     *
     * Represents a Square loyalty program. Loyalty programs define how buyers can earn points and redeem
     * points for rewards.
     * Square sellers can have only one loyalty program, which is created and managed from the Seller
     * Dashboard.
     * For more information, see [Loyalty Program Overview](https://developer.squareup.
     * com/docs/loyalty/overview).
     *
     * @maps program
     */
    public function setProgram(?LoyaltyProgram $program): void
    {
        $this->program = $program;
    }

    /**
     * Encode this object to JSON
     *
     * @return mixed
     */
    public function jsonSerialize()
    {
        $json = [];
        $json['errors']  = $this->errors;
        $json['program'] = $this->program;

        return array_filter($json, function ($val) {
            return $val !== null;
        });
    }
}

<?php

declare(strict_types=1);

namespace Square\Models;

/**
 * Represents a response from a retrieve request containing the specified `WageSetting` object or
 * error messages.
 */
class RetrieveWageSettingResponse implements \JsonSerializable
{
    /**
     * @var WageSetting|null
     */
    private $wageSetting;

    /**
     * @var Error[]|null
     */
    private $errors;

    /**
     * Returns Wage Setting.
     *
     * An object representing a team member's wage information.
     */
    public function getWageSetting(): ?WageSetting
    {
        return $this->wageSetting;
    }

    /**
     * Sets Wage Setting.
     *
     * An object representing a team member's wage information.
     *
     * @maps wage_setting
     */
    public function setWageSetting(?WageSetting $wageSetting): void
    {
        $this->wageSetting = $wageSetting;
    }

    /**
     * Returns Errors.
     *
     * The errors that occurred during the request.
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
     * The errors that occurred during the request.
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
     * Encode this object to JSON
     *
     * @return mixed
     */
    public function jsonSerialize()
    {
        $json = [];
        $json['wage_setting'] = $this->wageSetting;
        $json['errors']      = $this->errors;

        return array_filter($json, function ($val) {
            return $val !== null;
        });
    }
}

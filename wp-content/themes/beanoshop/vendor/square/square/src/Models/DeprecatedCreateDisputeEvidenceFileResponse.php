<?php

declare(strict_types=1);

namespace Square\Models;

/**
 * Defines the fields in a `DeprecatedCreateDisputeEvidenceFile` response.
 */
class DeprecatedCreateDisputeEvidenceFileResponse implements \JsonSerializable
{
    /**
     * @var Error[]|null
     */
    private $errors;

    /**
     * @var DisputeEvidence|null
     */
    private $evidence;

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
     * Returns Evidence.
     */
    public function getEvidence(): ?DisputeEvidence
    {
        return $this->evidence;
    }

    /**
     * Sets Evidence.
     *
     * @maps evidence
     */
    public function setEvidence(?DisputeEvidence $evidence): void
    {
        $this->evidence = $evidence;
    }

    /**
     * Encode this object to JSON
     *
     * @return mixed
     */
    public function jsonSerialize()
    {
        $json = [];
        $json['errors']   = $this->errors;
        $json['evidence'] = $this->evidence;

        return array_filter($json, function ($val) {
            return $val !== null;
        });
    }
}

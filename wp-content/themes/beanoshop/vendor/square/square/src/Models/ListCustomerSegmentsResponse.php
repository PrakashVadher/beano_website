<?php

declare(strict_types=1);

namespace Square\Models;

/**
 * Defines the fields that are included in the response body for requests to the
 * `ListCustomerSegments` endpoint.
 *
 * Either `errors` or `segments` is present in a given response (never both).
 */
class ListCustomerSegmentsResponse implements \JsonSerializable
{
    /**
     * @var Error[]|null
     */
    private $errors;

    /**
     * @var CustomerSegment[]|null
     */
    private $segments;

    /**
     * @var string|null
     */
    private $cursor;

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
     * Returns Segments.
     *
     * The list of customer segments belonging to the associated Square account.
     *
     * @return CustomerSegment[]|null
     */
    public function getSegments(): ?array
    {
        return $this->segments;
    }

    /**
     * Sets Segments.
     *
     * The list of customer segments belonging to the associated Square account.
     *
     * @maps segments
     *
     * @param CustomerSegment[]|null $segments
     */
    public function setSegments(?array $segments): void
    {
        $this->segments = $segments;
    }

    /**
     * Returns Cursor.
     *
     * A pagination cursor to be used in subsequent calls to `ListCustomerSegments`
     * to retrieve the next set of query results. The cursor is only present if the request succeeded and
     * additional results are available.
     *
     * For more information, see [Pagination](https://developer.squareup.com/docs/working-with-
     * apis/pagination).
     */
    public function getCursor(): ?string
    {
        return $this->cursor;
    }

    /**
     * Sets Cursor.
     *
     * A pagination cursor to be used in subsequent calls to `ListCustomerSegments`
     * to retrieve the next set of query results. The cursor is only present if the request succeeded and
     * additional results are available.
     *
     * For more information, see [Pagination](https://developer.squareup.com/docs/working-with-
     * apis/pagination).
     *
     * @maps cursor
     */
    public function setCursor(?string $cursor): void
    {
        $this->cursor = $cursor;
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
        $json['segments'] = $this->segments;
        $json['cursor']   = $this->cursor;

        return array_filter($json, function ($val) {
            return $val !== null;
        });
    }
}
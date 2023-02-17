<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class CustomerNoteRule implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    private $status;
    public function __construct($req)
    {
        $this->status=$req->status;
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        if(strtolower($this->status)=='ok' || isset($value)):
            return true;
        else:
            return false;
        endif;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'This note field is required.';
    }
}

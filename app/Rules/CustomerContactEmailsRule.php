<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class CustomerContactEmailsRule implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
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
        if(isset($value))
        {
            if (filter_var($value, FILTER_VALIDATE_EMAIL)) {
                return true;
            } 
            else 
            {
                return false;
            }
        }else
        {
            return true;
        }
        
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'Enter a valid email address.';
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Organization extends Model
{
    use HasFactory, HasUuids;

    protected $fillable = [
        'name',
        'phone',
        'email',
        'website',
        'logo',
    ];

    public function user_organizations() {
        return $this->hasMany(UserOrganization::class);
    }

    public function persons() : HasMany {
        return $this->hasMany(Person::class);
    }
}

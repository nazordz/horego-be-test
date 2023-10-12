<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Person extends Model
{
    use HasFactory, HasUuids;

    protected $table = "persons";

    protected $fillable = [
        'organization_id',
        'name',
        'phone',
        'email',
        'avatar',
    ];

    public function organization(): BelongsTo {
        return $this->belongsTo(Organization::class);
    }

}

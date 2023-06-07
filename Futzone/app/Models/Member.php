<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    use HasFactory;
    protected $fillable = ['namaMember', 'emailMember', 'passMember', 'noTelp'];

    // public function company(){
    //     return $this->belongsTo(Company::class);
    // }

    // public function task(){
    //     return $this->hasMany(Task::class);
    // }
}

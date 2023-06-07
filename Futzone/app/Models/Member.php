<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    use HasFactory;
    protected $fillable = ['namaMember', 'emailMember', 'passMember', 'noTelp'];

}
class Post extends Model
{
    public function post_content()
    {
        return $this->hasOne('App\Content');
    }
}

#------------------------------------------------------------------------------
# terraform v0.12.24
#------------------------------------------------------------------------------

/*

Any season is a good season for you.
If useless things do not hang in your mind,
In summer, a refreshing breeze; in winter, snow will accompany you.
In spring, hundreds of flowers; in autumn, a harvest moon;

*/

#------------------------------------------------------------------------------
# first module
#------------------------------------------------------------------------------

variable "a_discussion" {
	type = string
}

variable "blue_team" {
	type = string
}

variable "red_team" {
	type = list(string)
	default = ["opponent"]
}

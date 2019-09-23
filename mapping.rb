=begin

Gym [independent]
0) @@all = []
1) initialized with (name) then store in @@all array
2)self.all => reads @@all array
3) memberships => Memberships.all.select {|member| membership.gym == self}
4) 
5)
6)

Lifter [independent]
0)@@all = []
1)initialized with (name) then store in @@all array
2)self.all => reads @@all array
3) add_gym_membership => (gym, membership_cost) Membership.new(name, self, gym) 
4) membership => Membership.all.select {|member| member.lifer == self}
5) gyms =>   self.memberships.map {|member| member.gym}
6)

Membership [joiner]
0)@@all = []
1) initialized with (name, lifter, Gym ) then store in @@all array
2) self.all => reads @@all array
3)
4)
5)
6)






=end
# Examples of lines with different pen settings

# Continous red line
plot([0 0; 10 1],  region=[-1, 11, -1, 11], pen=(1,:red))

# Continous thick green line
plot!([0 1; 10 2], pen=(3,:green))

# Dashed thick blue line
plot!([0 2; 10 3], pen=(3,:blue, :dash))

# Dotted black line
plot!([0 3; 10 4], pen=(1,:black, :dot))

# Dash-Dot green line
plot!([0 4; 10 5], pen=(1,"0/150/0", "-."))

# Using round corners
plot!([0 5; 10 6], pen=(4,:black, :dash), conf=(PS_LINE_CAP=:round,))

# Annotated line
lines!([0 7; 10 7], pen=(1,:sienna), decorated=(quoted=true, const_label="~", n_labels=15, font=25))
text!(["Now, a bit harder"], x=5, y=7.1, clearance=true, font=18, justify=:MC, fill=:white)

# Simulating circles with a dashed line
plot!([0 8; 10 9], pen=(10,:orange, "0_20:0"), conf=(PS_LINE_CAP=:round,))

# Alternating larger and smaller circles
plot!([0 9; 10 10], pen=(6,:brown, "0_20:0"), conf=(PS_LINE_CAP=:round,))
plot!([0 9; 10 10], pen=(3,:green, "0_20:10"), conf=(PS_LINE_CAP=:round,), show=true)
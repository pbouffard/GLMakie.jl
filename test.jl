using AbstractPlotting
using GLMakie

scene, layout = layoutscene()
ax = layout[1, 1] = Axis(scene)
cb = layout[1, 2] = Colorbar(scene)
gl2 = layout[2, :] = MakieLayout.GridLayout()
bu = gl2[1, 1] = Button(scene)
on(bu.clicks) do b
  @info "Clicks! $b"
end
# bu = Button(scene)
sl = gl2[1, 2] = Slider(scene)

scat = scatter!(ax, rand(10))
le = gl2[1, 3] = Legend(scene, [scat], ["scatter"])

to = layout[end + 1, :] = Toggle(scene)
te = layout[0, :] = Label(scene, "A super title")
tb = layout[end + 1, :] = Textbox(scene)
me = layout[end + 1, :] = Menu(scene, options=["one", "two", "three"])
scene
// Calculate next position
precision mediump float;

uniform vec3 constants;

out vec4 fragColor;
void main() {
  float dt = 0.0001;
  vec3 position = texture(sTD2DInputs[0], vUV.st).xyz - 0.5;
  // vec4 color = texture(sTD2DInputs[0], vUV.st);
  vec3 trans = vec3(0.0);
  trans.x = constants.x * (position.y - position.x);
  trans.y = position.x * (constants.z - position.z) - position.y;
  trans.z = position.x * position.y - constants.b * position.z;
  vec4 color = vec4(position + dt * trans + 0.5, 1.0);
  fragColor = TDOutputSwizzle(color);
}

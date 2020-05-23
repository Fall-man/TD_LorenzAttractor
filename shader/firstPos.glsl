// Define first position of particles
precision mediump float;

uniform vec2 resolution;
uniform float dimSize;

out vec4 fragColor;
void main() {
  vec3 position = vec3(0.0);
  vec2 uv = vUV.st;
  float id = floor(uv.x * resolution.x * resolution.y + uv.y * resolution.y);
  position.z = mod(id, dimSize);
  position.y = mod(floor(id / dimSize), dimSize);
  position.x = mod(floor(id / (dimSize * dimSize)), dimSize);

  position /= dimSize;
  position -= 0.5;
  position *= 1.0;

  vec4 color = vec4(position + 0.5, 1.0);

  // vec4 color = vec4(1.0);
  fragColor = TDOutputSwizzle(color);
}

// Example Vertex Shader
uniform sampler2D position;
uniform sampler2D firstPos;

void main() {
  vec4 worldSpacePos = TDDeform(P);
  gl_Position = TDWorldToProj(worldSpacePos);
}

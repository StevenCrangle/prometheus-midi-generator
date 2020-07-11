#version 410
layout(location = 0) in vec3 vertexPosition_modelspace;
uniform float uTime;
// Values that stay constant for the whole mesh.
uniform mat4 uMVP;
out vec2 coord;

void main() {

    gl_Position = uMVP * vec4(vertexPosition_modelspace,1);
    coord = vertexPosition_modelspace.xy;
    
}




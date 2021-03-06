#version 430

layout (location = 0) in vec3 pos;
layout (location = 1) in vec2 tex;
layout (location = 2) in vec3 norm;
layout (location = 3) in mat4 aInstanceMatrix;

out vec4 vCol;
out vec2 TexCoord;
out vec3 Normal;
out vec3 FragPos;

uniform mat4 projection;
uniform mat4 view;

void main()
{
    TexCoord = tex;

    gl_Position = projection * view * aInstanceMatrix * vec4(pos, 1.0f); 

    Normal = mat3(transpose(inverse(aInstanceMatrix))) * norm;

    FragPos = (aInstanceMatrix * vec4(pos, 1.0)).xyz;
}
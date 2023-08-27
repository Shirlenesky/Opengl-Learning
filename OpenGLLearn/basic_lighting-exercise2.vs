#version 330 core

layout(location = 0) in vec3 aPos;//��Դ������ģ�����ֲ�����
layout(location = 1) in vec3 aNormal;

out vec3 FragPos;
out vec3 Normal;
out vec3 LightPos;

uniform vec3 lightPos;//���ǹ�Դ�ڳ����е�ʵ����������

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
	FragPos = vec3(model * vec4(aPos, 1.0));
	LightPos = vec3(view * vec4(lightPos, 1.0));
	Normal = aNormal;
	gl_Position = projection * view * model * vec4(aPos, 1.0);
}
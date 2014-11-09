/*

	Updates player clothing by replacing vanilla by custom ones

*/

private["_uniform"];

///Uniform
////////////////

_uniform = uniform player;

switch(true) do
{
	case (playerSide == west && _uniform == "U_Rangemaster"):
	{
		player setObjectTextureGlobal [0, "textures\clothing\sinpd.jpg"];
	};
	case (playerSide == civilian && _uniform == "U_C_WorkerCoveralls"):
	{
		player setObjectTextureGlobal  [0, "textures\clothing\prisonsuit.jpg"];
	};
	case (playerSide == civilian && _uniform == "U_C_Scientist"):
	{
		player setObjectTextureGlobal  [0, "textures\clothing\jumpsuit.paa"]; 
	};
	case (playerSide == independent && _uniform == "U_Rangemaster"):
    {
        player setObjectTextureGlobal [0, "textures\clothing\medic_uniformt1.jpg"];
    };
	
};

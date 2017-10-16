FUNC VOID INIT_GLOBAL() {
	LeGo_Init(LeGo_All);
	
	Spine_Init(SPINE_ALL);
};

func void STARTUP_Demo()
{

};

func void INIT_Demo()
{
	INIT_GLOBAL();
	
	B_InitMonsterAttitudes();
	B_InitGuildAttitudes();
};

var map = {}

map[11] = "Incisivo 1.1"
map[12] = "Incisivo 1.2"
map[13] = "Canino 1.3"
map[14] = "Pré-molar 1.4"
map[15] = "Pré-molar 1.5"
map[16] = "Molar 1.6"
map[17] = "Molar 1.7"
map[18] = "Siso 1.8"
map[21] = "Incisivo 2.1"
map[22] = "Incisivo 2.2"
map[23] = "Canino 2.3"
map[24] = "Pré-molar 2.4"
map[25] = "Pré-molar 2.5"
map[26] = "Molar 2.6"
map[27] = "Molar 2.7"
map[28] = "Siso 2.8"
map[31] = "Incisivo 3.1"
map[32] = "Incisivo 3.2"
map[33] = "Canino 3.3"
map[34] = "Pré-molar 3.4"
map[35] = "Pré-molar 3.5"
map[36] = "Molar 3.6"
map[37] = "Molar 3.7"
map[38] = "Siso 3.8"
map[41] = "Incisivo 4.1"
map[42] = "Incisivo 4.2"
map[43] = "Canino 4.3"
map[44] = "Pré-molar 4.4"
map[45] = "Pré-molar 4.5"
map[46] = "Molar 4.6"
map[47] = "Molar 4.7"
map[48] = "Siso 4.8"


function setSelectedToothField(id)
{
	document.getElementById("ids").value = map[id];

	openForm();
}

function setPriceField()
{		
	var price = document.getElementById("iprocedimento").value;

	switch(price)
	{
		case "canal": 
			document.getElementById("ipreco").value = 500;
			break;
			
		case "clareamento": 
			document.getElementById("ipreco").value = 1500;
			break;
			
		case "cirurgia": 
			document.getElementById("ipreco").value = 5000;
			break;
			
		case "limpeza": 
			document.getElementById("ipreco").value = 80;
			break;
			
		case "nada": 
			document.getElementById("ipreco").value = 0;
			break;
	}					
}

function openForm() 
{				
	document.getElementById("popDiv").style.display = "block";
					  
}

function closeForm() 
{
	document.getElementById("popDiv").style.display = "none";
}


$(function()
{	
	$('#iimagem').mapster({
	mapKey: 'id',
	stroke: 'true',
	fillColor: '9acd32',
	fillOpacity: 0.65,
	toolTipClose: ["tooltip-click", "area-click", "image-mouseout", "area-mouseout"],
	toolTipContainer: '<div style="border:0.5px solid black; background: #FFFFFF; font-family:Titillium Web; text-align: left; font-size: 20px; position:absolute; width:250px; padding:4px; box-shadow: rgb(83, 83, 83) 3px 3px 5px; border-radius: 6px; opacity: 0.90; display: block; z-index: 9999;"></div>',
	areas: 
        [{
            key: '11',
            staticState: false
        },
        {
            key: '12',
            staticState: false
        },
        {
            key: '13',
            staticState: false
        },
        {
            key: '14',
            staticState: false,
        },
        {
            key: '15',
            staticState: false,
        },
        {
            key: '16',
            staticState: false,
        },
        {
            key: '17',
            staticState: false,
        },
        {
            key: '18',
            staticState: false,
        },
        {
            key: '21',
            staticState: false,
        },
        {
            key: '22',
            staticState: false,
        },
        {
            key: '23',
            staticState: false,
        },
        {
            key: '24',
            staticState: false,
        },
        {
            key: '25',
            staticState: false,
        },
        {
            key: '26',
            staticState: false,
        },
        {
            key: '27',
            staticState: false,
        },
        {
            key: '28',
            staticState: false,
        },
        {
            key: '31',
            staticState: false,
        },
        {
            key: '32',
            staticState: false,
        },
        {
            key: '33',
            staticState: false,
        },
        {
            key: '34',
            staticState: false,
        },
        {
            key: '35',
            staticState: false,
        },
        {
            key: '36',
            staticState: false,
        },
        {
            key: '37',
            staticState: false,
        },
        {
            key: '38',
            staticState: false,
        },
        {
            key: '41',
            staticState: false,
        },
        {
            key: '42',
            staticState: false,
        },
        {
            key: '43',
            staticState: false,
        },
        {
            key: '44',
            staticState: false,
        },
        {
            key: '45',
            staticState: false,
        },
        {
            key: '46',
            staticState: false,
        },
        {
            key: '47',
            staticState: false,
        },
        {
            key: '48',
            staticState: false,
        },]

	});
});
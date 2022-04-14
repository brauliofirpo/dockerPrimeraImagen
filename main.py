from fastapi import FastAPI
from datetime import date, datetime

app = FastAPI()


@app.get("/")
async def root():
    #Fecha actual
    hoy = date.today()
    hoy = hoy.strftime("%d/%m/%Y")
    
    #Hora actual
    ahora = datetime.now()
    ahora = ahora.strftime("%H:%M:%S")
    
    return "Hoy es "+str(hoy)+" y son las "+ str(ahora)
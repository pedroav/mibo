Possuo cameras da linha mibo da intelbras e percebi que é possivel capturar as imagens delas via RTSP.

Para que os scripts funcionem corretamente, você vai precisar das seguintes variaveis de ambiente:

$USER=usuario-da-sua-maquina
export PATH_VIDEO_LOCAL_CAM1=pasta-onde-voce-vai-guardar-os-videos-da-cam1
export PATH_VIDEO_LOCAL_CAM2=pasta-onde-voce-vai-guardar-os-videos-da-cam2
export PATH_VIDEO_LOCAL=pasta-raiz-onde-os-videos-estar
export PATH_VIDEO_S3=path-do-cloud-storage
export PASS_CAM1=senha-da-cam1(está no qrcode)
export PASS_CAM2=senha-da-cam2(está no qrcode)

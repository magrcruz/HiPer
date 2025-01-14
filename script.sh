OUT='./standing_dog'
SRCTXT='a standing dog'
TGTTXT='a sitting dog'

##training
python train.py \
--pretrained_model_name 'stabilityai/stable-diffusion-2-1-base' \
--input_image 'dog.png' \
--target_text "$TGTTXT" \
--source_text "$SRCTXT" \
--output_dir "$OUT" \
--n_hiper=5 \
--emb_learning_rate=5e-3 \
--emb_train_steps=1500 \
--seed 200000


##inference
STEP=1000
python inference.py \
--pretrained_model_name 'stabilityai/stable-diffusion-2-1-base' \
--inference_train_step $STEP \
--target_txt "$TGTTXT" \
--output_dir "$OUT" \
--seed 111111 \
--image_num 10

#opciones
#stabilityai/stable-diffusion-2-1-base
#CompVis/stable-diffusion-v1-4
#openai/clip-vit-base-patch32
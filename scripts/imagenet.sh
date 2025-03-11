# Download training dataset sequentially, upload to GCS, and remove local file
seq -f "%04g" 0 255 | xargs -P 0 -i wget https://huggingface.co/datasets/timm/imagenet-1k-wds/resolve/main/imagenet1k-train-{}.tar --header "Authorization:Bearer $HF_TOKEN"

gsutil -m cp *.tar gs://carletonai/imagenet-1k-wds/ 
gsutil -m cp *.tar gs://carletonai-1/imagenet-1k-wds/ 
rm *.tar

seq -f "%04g" 256 511 | xargs -P 0 -i wget https://huggingface.co/datasets/timm/imagenet-1k-wds/resolve/main/imagenet1k-train-{}.tar --header "Authorization:Bearer $HF_TOKEN"

gsutil -m cp *.tar gs://carletonai/imagenet-1k-wds/ 
gsutil -m cp *.tar gs://carletonai-1/imagenet-1k-wds/ 
rm *.tar


seq -f "%04g" 512 767 | xargs -P 0 -i wget https://huggingface.co/datasets/timm/imagenet-1k-wds/resolve/main/imagenet1k-train-{}.tar --header "Authorization:Bearer $HF_TOKEN"

gsutil -m cp *.tar gs://carletonai/imagenet-1k-wds/ 
gsutil -m cp *.tar gs://carletonai-1/imagenet-1k-wds/ 
rm *.tar

seq -f "%04g" 768 1023 | xargs -P 0 -i wget https://huggingface.co/datasets/timm/imagenet-1k-wds/resolve/main/imagenet1k-train-{}.tar --header "Authorization:Bearer $HF_TOKEN"

gsutil -m cp *.tar gs://carletonai/imagenet-1k-wds/ 
gsutil -m cp *.tar gs://carletonai-1/imagenet-1k-wds/ 
rm *.tar


# Download validation dataset sequentially, upload to GCS, and remove local file
seq -f "%02g" 0 63 | xargs -P 0 -i wget https://huggingface.co/datasets/timm/imagenet-1k-wds/resolve/main/imagenet1k-validation-{}.tar --header "Authorization:Bearer $HF_TOKEN"

gsutil -m cp *.tar gs://carletonai/imagenet-1k-wds/
gsutil -m cp *.tar gs://carletonai-1/imagenet-1k-wds/ 
rm *.tar


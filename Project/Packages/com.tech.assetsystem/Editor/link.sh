#link 源码
if [ -d "../../../Applications/vlab-training-ipad/U3DProject/Packages/com.nd.mathlab" ]; then 
	rm -r "../../../Applications/vlab-training-ipad/U3DProject/Packages/com.nd.mathlab"
fi
if [ ! -d "../../../Applications/vlab-training-ipad/U3DProject/Packages/com.nd.mathlab" ]; then
    ln -s "$(pwd)/../U3DProject/Packages/com.nd.mathlab" ../../../Applications/vlab-training-ipad/U3DProject/Packages/com.nd.mathlab
fi

#资源关联
if [ -d "../../../Applications/vlab-training-ipad/U3DProject/Assets/MathlabAssets" ]; then 
	rm -r "../../../Applications/vlab-training-ipad/U3DProject/Assets/MathlabAssets"
fi
if [ ! -d "../../../Applications/vlab-training-ipad/U3DProject/Assets/MathlabAssets" ]; then
    ln -s "$(pwd)/../U3DProject/Assets/MathlabAssets" ../../../Applications/vlab-training-ipad/U3DProject/Assets/MathlabAssets
fi

if [ -d "../../../Applications/vlab-training-ipad/U3DProject/Assets/StreamingAssets/Mathlab_AB" ]; then 
	rm -r "../../../Applications/vlab-training-ipad/U3DProject/Assets/StreamingAssets/Mathlab_AB"
fi
if [ ! -d "../../../Applications/vlab-training-ipad/U3DProject/Assets/StreamingAssets/Mathlab_AB" ]; then
    ln -s "$(pwd)/../U3DProject/Assets/StreamingAssets/Mathlab_AB" ../../../Applications/vlab-training-ipad/U3DProject/Assets/StreamingAssets/Mathlab_AB
fi

# 配置文件资源关联
if [ -d "../../../Applications/vlab-training-ipad/U3DProject/Assets/StreamingAssets/vlab_app_configs/Mathlab" ]; then 
	rm -r "../../../Applications/vlab-training-ipad/U3DProject/Assets/StreamingAssets/vlab_app_configs/Mathlab"
fi
if [ ! -d "../../../Applications/vlab-training-ipad/U3DProject/Assets/StreamingAssets/vlab_app_configs/Mathlab" ]; then
    ln -s "$(pwd)/../U3DProject/Assets/StreamingAssets/vlab_app_configs/Mathlab" ../../../Applications/vlab-training-ipad/U3DProject/Assets/StreamingAssets/vlab_app_configs/Mathlab
fi

if [ -d "../../../Applications/vlab-training-ipad/U3DProject/Assets/StreamingAssets/vlab_app_configs/Language/Mathlab" ]; then 
	rm -r "../../../Applications/vlab-training-ipad/U3DProject/Assets/StreamingAssets/vlab_app_configs/Language/Mathlab"
fi
if [ ! -d "../../../Applications/vlab-training-ipad/U3DProject/Assets/StreamingAssets/vlab_app_configs/Language/Mathlab" ]; then
    ln -s "$(pwd)/../U3DProject/Assets/StreamingAssets/vlab_app_configs/Language/Mathlab" ../../../Applications/vlab-training-ipad/U3DProject/Assets/StreamingAssets/vlab_app_configs/Language/Mathlab
fi


# SDK工具目录关联
if [ ! -d "../../../Applications/vlab-training-ipad/Template" ]; then
    ln -s "$(pwd)/../Template" ../../../Applications/vlab-training-ipad/Template
fi

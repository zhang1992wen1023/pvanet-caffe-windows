
@Build\x64\Release\caffe.exe train ^
--gpu 0 ^
--solver examples/FRCNN/vgg16/solver.prototxt ^
--weights examples/FRCNN/VGG16.v2.caffemodel


@python examples/FRCNN/convert_model.py ^
--model examples/FRCNN/vgg16/test.prototxt  ^
--weights examples/FRCNN/snapshot/vgg16_faster_rcnn_iter_70000.caffemodel ^
--config examples/FRCNN/config/voc_config.json ^
--net_out examples/FRCNN/vgg16_faster_rcnn_final.caffemodel
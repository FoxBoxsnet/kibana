.SILENT :
.PHONY : kibana

kibana:
	docker build -t tokyohomesoc/kibana:test 5.0.0/
	docker images
    docker history tokyohomesoc/kibana:test
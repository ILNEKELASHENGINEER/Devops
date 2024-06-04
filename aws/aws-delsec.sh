#!/bin/bash
for i in {1..10};
do
	aws ec2 delete-security-group --group-name launch-wizard-$i
done

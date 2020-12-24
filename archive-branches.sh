#!/bin/bash

if [ $# -ne 3 ]; then
	echo "Error: unexpected argument numbers"
	echo "Usage: sh archive-branches.sh [archive|remove] [binutils|gdb] <branch_name>"
	exit 1;
fi

operation=$1
branch_type=$2
branch_name=$3
date=$(date +'%Y-%m-%d')

case "$branch_type" in
  binutils)
	;;
  gdb)
	;;
  *)
	echo "Error: unknown branch type $branch_type, please enter [binutils|gdb]"
	exit 1;
	;;
esac

case "$operation" in
  archive)
	git checkout $branch_name && \
	git rm -rf . && \
	git add . && \
	git commit -m "Delete branch $branch_name for archive." && \
	git checkout __archive__ && \
	git merge -s ours $branch_name -m "Merge branch $branch_name into __archive__." && \
	sed -i "/Archived branch of $branch_type/i \ \ $date\t\t$branch_name" README
	git add . && \
	git commit -m "Update README for branch $branch_name."
	;;
  remove)
	git branch -D $branch_name
	git push origin --delete $branch_name
	;;
  *)
	echo "Error: unknown operation $operation, please enter [archive|remove]"
	;;
esac

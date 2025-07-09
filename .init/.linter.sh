#!/bin/bash
cd /home/kavia/workspace/code-generation/healthcare-nurse-dispatch-system-0f4913b3/nurse_dispatch_frontend
npm run build
EXIT_CODE=$?
if [ $EXIT_CODE -ne 0 ]; then
   exit 1
fi


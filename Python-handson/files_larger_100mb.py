import os

def checkfiles(path,check_mb=100):
    for root,dir,files in os.walk(path):
        for file in files:
            file_path = os.path.join(root,file)
            size_bytes = os.path.getsize(file_path)
            size = size_bytes / (1024*1024)
            if size >= check_mb:
                print(f"{file_path}:{size:.2f}MB")

checkfiles("c:")
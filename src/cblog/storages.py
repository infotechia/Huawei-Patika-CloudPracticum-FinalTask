from huaweicloud.storage import HWBS3Storage

class MediaStore(HWBS3Storage):
    location = 'media'
    file_overwrite = False

# Script để push dự án Android lên GitHub
# Hướng dẫn sử dụng:
# 1. Tạo repository trên GitHub trước
# 2. Thay đổi YOUR_USERNAME và YOUR_REPO_NAME bên dưới
# 3. Chạy script này

Write-Host "=== HƯỚNG DẪN PUSH LÊN GITHUB ===" -ForegroundColor Green
Write-Host ""

Write-Host "BƯỚC 1: Tạo repository trên GitHub" -ForegroundColor Yellow
Write-Host "1. Truy cập https://github.com" -ForegroundColor White
Write-Host "2. Đăng nhập và click 'New' để tạo repository" -ForegroundColor White
Write-Host "3. Đặt tên repository (ví dụ: PRM_LAB)" -ForegroundColor White
Write-Host "4. Chọn Public hoặc Private" -ForegroundColor White
Write-Host "5. KHÔNG check 'Initialize with README'" -ForegroundColor White
Write-Host "6. Click 'Create repository'" -ForegroundColor White
Write-Host ""

Write-Host "BƯỚC 2: Cập nhật thông tin repository bên dưới" -ForegroundColor Yellow
Write-Host "Thay đổi YOUR_USERNAME và YOUR_REPO_NAME trong script này" -ForegroundColor White
Write-Host ""

# Thay đổi thông tin này theo repository của bạn
$username = "YOUR_USERNAME"
$repoName = "YOUR_REPO_NAME"

Write-Host "Thông tin hiện tại:" -ForegroundColor Cyan
Write-Host "Username: $username" -ForegroundColor White
Write-Host "Repository: $repoName" -ForegroundColor White
Write-Host ""

if ($username -eq "YOUR_USERNAME" -or $repoName -eq "YOUR_REPO_NAME") {
    Write-Host "❌ Vui lòng cập nhật thông tin username và repository trước!" -ForegroundColor Red
    Write-Host "Mở file push_to_github.ps1 và thay đổi các giá trị trên" -ForegroundColor White
    exit
}

Write-Host "BƯỚC 3: Thêm remote origin" -ForegroundColor Yellow
$remoteUrl = "https://github.com/$username/$repoName.git"
Write-Host "Remote URL: $remoteUrl" -ForegroundColor White

# Xóa remote origin cũ nếu có
git remote remove origin 2>$null

# Thêm remote origin mới
git remote add origin $remoteUrl

Write-Host "✅ Đã thêm remote origin" -ForegroundColor Green
Write-Host ""

Write-Host "BƯỚC 4: Push code lên GitHub" -ForegroundColor Yellow
Write-Host "Đang push code..." -ForegroundColor White

# Push code lên GitHub
git branch -M main
git push -u origin main

Write-Host ""
Write-Host "✅ Hoàn thành! Dự án đã được push lên GitHub" -ForegroundColor Green
Write-Host "Repository URL: https://github.com/$username/$repoName" -ForegroundColor Cyan 
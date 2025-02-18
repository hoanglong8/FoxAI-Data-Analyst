Bảng tổng hợp tồn kho chi tiết:

		SELECT 
		BCTK.[Loại chứng từ],
		Branch.BranchName AS [Têm chi nhánh],
		Counters.Name AS [Tên quầy],
		OIBT.ItmsGrpName AS [Tên nhóm hàng hóa],
		OITM.ItemName AS [Tên hàng hóa],
		BCTK.[Khối lượng],
		BCTK.[Ngày chứng từ],
		BCTK.[Mã hóa đơn],
		    CASE 
				WHEN BCTK.[Loại đối tượng] = 13 THEN N'Hóa đơn bán hàng'
		        WHEN BCTK.[Loại đối tượng] = 18 THEN N'Hóa đơn mua hàng'
		        WHEN BCTK.[Loại đối tượng] = 19 THEN N'Đổi trả hàng'
		        WHEN BCTK.[Loại đối tượng] = 20 THEN N'Nhập kho'
		        WHEN BCTK.[Loại đối tượng] = 27 THEN N'Xuất kho'
				WHEN BCTK.[Loại đối tượng] = 26 THEN N'Đặt hàng'
		        WHEN BCTK.[Loại đối tượng] = 67 THEN N'Chuyển kho nội bộ'
		        ELSE N'Khác'
		    END AS [Loại chứng từ],
		    CASE 
				WHEN BCTK.[Loại đối tượng] = 13 AND ODOC.Status = 'O' THEN N'Chờ thanh toán'
				WHEN BCTK.[Loại đối tượng] = 13 AND ODOC.Status = 'CP' THEN N'Đã thanh toán (Trừ kho)'
		
		        WHEN BCTK.[Loại đối tượng] = 18 AND ODOC.Status = 'O' THEN N'Chờ thanh toán (Cộng kho)'
				WHEN BCTK.[Loại đối tượng] = 18 AND ODOC.Status = 'CP' THEN N'Đã thanh toán'
		
		        WHEN BCTK.[Loại đối tượng] = 19 AND ODOC.Status = 'O' THEN N'Chờ thanh toán (Cửa hàng chưa trả vàng, tiền cho khách)'
				WHEN BCTK.[Loại đối tượng] = 19 AND ODOC.Status = 'CP' THEN N'Đã thanh toán (Cửa hàng đã thanh toán tiền,vàng cho khách)'
		
		        WHEN BCTK.[Loại đối tượng] = 20 AND ODOC.Status = 'O' THEN N'Tăng kho'
		
		        WHEN BCTK.[Loại đối tượng] = 27 AND ODOC.Status = 'O' THEN N'Trừ kho'
		
				WHEN BCTK.[Loại đối tượng] = 26 AND ODOC.Status = 'O' THEN N'Chờ đặt cọc'
				WHEN BCTK.[Loại đối tượng] = 26 AND ODOC.Status = 'DPM' THEN N'Đã đặt cọc'
				WHEN BCTK.[Loại đối tượng] = 26 AND ODOC.Status = 'CP' THEN N'Đã thanh toán'
		
		        WHEN BCTK.[Loại đối tượng] = 67 AND ODOC.Status = 'O' THEN N'Tạo phiếu chuyển kho'
				WHEN BCTK.[Loại đối tượng] = 67 AND ODOC.Status = 'CP' THEN N'Nhận phiếu chuyển kho'
		        ELSE N'Khác'
		    END AS [Trạng thái],
			CASE
				WHEN BCTK.[Loại đối tượng] = 19 AND ODOC.Status = 'IN' THEN N'Nhập kho'
				WHEN BCTK.[Loại đối tượng] = 19 AND ODOC.Status = 'W' THEN N'Sản phẩm cần thanh toán tiền'
				WHEN BCTK.[Loại đối tượng] = 19 AND ODOC.Status = 'OUT' THEN N'Xuất kho'
			ELSE N'Không có'
			END AS [Hành động],
		BCTK.[Nhập trong kỳ],
		BCTK.[Nhập trong kỳ khác],
		BCTK.[Xuất trong kỳ],
		BCTK.[Xuất trong kỳ khác]
		FROM [dbo].[BaoCaoTonKhoChiTiet] (
		'20250201',
		'20250217',
		'GoldExchange',
		17,
		58,
		27,
		'QMTC0.5'
		) AS BCTK
		LEFT JOIN Branch ON BCTK.[Id chi nhánh] = Branch.Id
		LEFT JOIN Counters ON BCTK.[Id quầy] = Counters.Id
		LEFT JOIN OIBT ON BCTK.[Mã nhóm hàng hóa 1] = OIBT.Id
		LEFT JOIN OITM ON BCTK.[Mã hàng hóa] = OITM.ItemCode
		LEFT JOIN ODOC ON BCTK.[Loại đối tượng] = ODOC.ObjType
		LEFT JOIN DOC1 ON BCTK.[Loại đối tượng] = DOC1.FatherId
		GROUP BY 
			BCTK.[Loại chứng từ],
			Branch.BranchName,
			Counters.Name,
			OIBT.ItmsGrpName,
			OITM.ItemName,
			BCTK.[Khối lượng],
			BCTK.[Ngày chứng từ],
			BCTK.[Ngày chứng từ],
			BCTK.[Loại đối tượng],
			BCTK.[Mã hóa đơn],
			ODOC.Status,
			BCTK.[Nhập trong kỳ],
			BCTK.[Nhập trong kỳ khác],
			BCTK.[Xuất trong kỳ],
			BCTK.[Xuất trong kỳ khác]
    

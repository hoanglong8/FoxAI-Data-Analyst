Bảng tổng hợp tồn kho chi tiết:

    SELECT 
    BCTK.*,
    Branch.BranchName AS [Têm chi nhánh],
    Counters.Name AS [Tên quầy],
    OIBT.ItmsGrpName AS [Tên nhóm hàng hóa],
    OITM.ItemName AS [Tên hàng hóa],
    Branch.Id AS BranchId,
    Counters.Id AS CounterId,
    OIBT.Id AS OIBTId,
    OITM.ItemCode AS ItemCode
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
    

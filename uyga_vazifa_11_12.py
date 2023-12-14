class Solution(object):
    def plusOne(self, digits):
        lst = []
        for i in range(len(digits)):
            if i == len(digits)-1:
                if digits[i]+1 > 9:
                    lst.append((digits[i]+1) // 10)
                    lst.append((digits[i]+1) % 10)
                else:
                    lst.append(digits[i]+1)
                
            else:
                lst.append(digits[i])
            
        return lst
    





class Solution(object):
    def generate(self, numRows):
        if numRows == 0:
           return []
        lst = [[1]]
        for i in range(1, numRows):
            row = [1]
            for j in range(1, i):
                row.append(lst[i - 1][j - 1] + lst[i - 1][j])
            row.append(1)
            lst.append(row)
        return lst
    






class Solution(object):
    def getRow(self, rowIndex):
        if rowIndex == 0:
           return [1]
        lst = [1]
        for i in range(1, rowIndex+1):
            row = [1]
            for j in range(1, i):
                row.append(lst[j - 1] + lst[j])
            row.append(1)
            lst=row
        return lst
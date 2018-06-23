                        if (res.data.content.data.length == 0 && _self.page.current > 1 ) {
                            _self.page.current = _self.page.current - 1;
                            _self.getTableData();
                        } else {
                            _self.tableData = res.data.content.data;
                            _self.page.total = Number(res.data.content.total);
                            _self.page.size = Number(res.data.content.perPage);
                            _self.page.current = Number(res.data.content.currentPage);
						}

require 'spec_helper'

describe 'WAVSEP obsolete files' do
    include_examples 'wavsep'

    def self.methods
        ['GET']
    end

    def self.test_cases( http_method )
        {
            'Technology Specific'       => {
                url:        '/',
                root_url:   true,
                checks:     [:common_files],

                vulnerable: [
                                'Copy%20of%20WEB-INF/web.xml',
                                'WEB-INF%20(copy)/web.xml',
                                'WEB-INF%20-%20Copy/web.xml'
                            ]
            },

            '404Error'       => {
                url:        "Obsolete-Files/ObsoleteFile-Detection-Evaluation-#{http_method}-404Error/",
                checks:     [:backup_files, :backup_directories, :common_files],

                vulnerable: [
                    'Copy%20(2)%20of%20Login.jsp',
                    'Copy%20of%20Copy%20of%20Login.jsp',
                    'Copy%20of%20Login.jsp',
                    'Copy%20of%20private/',
                    'Login%20(3rd%20copy).jsp',
                    'Login%20(4th%20copy).jsp',
                    'Login%20(another%20copy).jsp',
                    'Login%20(copy).jsp',
                    'Login%20(third%20copy).jsp',
                    'Login%20-%20Copy%20(2).jsp',
                    'Login%20-%20Copy%20-%20Copy.jsp',
                    'Login%20-%20Copy.jsp',
                    'Login.jsp.7z',
                    'Login.jsp.ar',
                    'Login.jsp.bz2',
                    'Login.jsp.cbz',
                    'Login.jsp.exe',
                    'Login.jsp.gz',
                    'Login.jsp.jar',
                    'Login.jsp.lzma',
                    'Login.jsp.tar',
                    'Login.jsp.tar.7z',
                    'Login.jsp.tar.bz2',
                    'Login.jsp.tar.gz',
                    'Login.jsp.tar.lzma',
                    'Login.jsp.tar.xz',
                    'Login.jsp.xz',
                    'Login.jsp.zip',
                    'Login.jsp~',
                    'index.jsp1',
                    'index.jsp2',
                    'index1.jsp',
                    'index2.jsp',
                    'private%20(copy)/',
                    'private%20-%20Copy/',
                    'private.7z',
                    'private.ear',
                    'private.ar',
                    'private.cbz',
                    'private.exe',
                    'private.jar',
                    'private.rar',
                    'private.tar',
                    'private.tar.7z',
                    'private.tar.bz2',
                    'private.tar.gz',
                    'private.tar.lzma',
                    'private.tar.xz',
                    'private.war',
                    'private.wim',
                    'private.zip',
                    'private/backup_inner.jsp',
                    'private/bak_inner.jsp',
                    'private/inner.1',
                    'private/inner.a',
                    'private/inner.bac',
                    'private/inner.backup',
                    'private/inner.bak',
                    'private/inner.inc',
                    'private/inner.include',
                    'private/inner.jsp.1',
                    'private/inner.jsp.a',
                    'private/inner.jsp.bac',
                    'private/inner.jsp.backup',
                    'private/inner.jsp.bak',
                    'private/inner.jsp.old',
                    'private/inner.jsp_backup',
                    'private/inner.jsp_bak',
                    'private/inner.jsp_old',
                    'private/inner.jspa',
                    'private/inner.jspbak',
                    'private/inner.jspf',
                    # 'private/inner.jspx',
                    'private/inner.jspinc',
                    'private/inner.jspold',
                    'private/inner.old',
                    'private/inner_backup.jsp',
                    'private/inner_bak.jsp',
                    'private/old_inner.jsp',
                    'ContactUs.7z',
                    'ContactUs.rar',
                    'ContactUs.tar',
                    'ContactUs.wim',
                    'ContactUs.zip',
                ],
                vulnerable_absolute: [
                    'WEB-INF.7z',
                    'WEB-INF.rar',
                    'WEB-INF.tar',
                    'WEB-INF.zip'
                ]
            },

            '200Error'      => {
                url:        "Obsolete-Files/ObsoleteFile-Detection-Evaluation-#{http_method}-200Error/",
                checks:     [:backup_files, :backup_directories],

                vulnerable: [
                    'ContactUs.7z',
                    'ContactUs.rar',
                    'ContactUs.tar',
                    'ContactUs.wim',
                    'ContactUs.zip',
                    'Copy%20(2)%20of%20Login.jsp',
                    'Copy%20of%20Copy%20of%20Login.jsp',
                    'Copy%20of%20Login.jsp',
                    'Copy%20of%20private/',
                    'Login%20(3rd%20copy).jsp',
                    'Login%20(4th%20copy).jsp',
                    'Login%20(another%20copy).jsp',
                    'Login%20(copy).jsp',
                    'Login%20(third%20copy).jsp',
                    'Login%20-%20Copy%20(2).jsp',
                    'Login%20-%20Copy%20-%20Copy.jsp',
                    'Login%20-%20Copy.jsp',
                    'Login.jsp.7z',
                    'Login.jsp.ar',
                    'Login.jsp.bz2',
                    'Login.jsp.cbz',
                    'Login.jsp.exe',
                    'Login.jsp.gz',
                    'Login.jsp.jar',
                    'Login.jsp.lzma',
                    'Login.jsp.tar',
                    'Login.jsp.tar.7z',
                    'Login.jsp.tar.bz2',
                    'Login.jsp.tar.gz',
                    'Login.jsp.tar.lzma',
                    'Login.jsp.tar.xz',
                    'Login.jsp.xz',
                    'Login.jsp.zip',
                    'Login.jsp~',
                    'index.jsp1',
                    'index.jsp2',
                    'index1.jsp',
                    'index2.jsp',
                    'private%20(copy)/',
                    'private%20-%20Copy/',
                    'private.7z',
                    'private.ar',
                    'private.ear',
                    'private.cbz',
                    'private.exe',
                    'private.jar',
                    'private.rar',
                    'private.tar',
                    'private.tar.7z',
                    'private.tar.bz2',
                    'private.tar.gz',
                    'private.tar.lzma',
                    'private.tar.xz',
                    'private.war',
                    'private.wim',
                    'private.zip',
                    'private/backup_inner.jsp',
                    'private/bak_inner.jsp',
                    'private/inner.1',
                    'private/inner.a',
                    'private/inner.bac',
                    'private/inner.backup',
                    'private/inner.bak',
                    'private/inner.inc',
                    'private/inner.include',
                    'private/inner.jsp.1',
                    'private/inner.jsp.a',
                    'private/inner.jsp.bac',
                    'private/inner.jsp.backup',
                    'private/inner.jsp.bak',
                    'private/inner.jsp.old',
                    'private/inner.jsp_backup',
                    'private/inner.jsp_bak',
                    'private/inner.jsp_old',
                    'private/inner.jspa',
                    'private/inner.jspbak',
                    'private/inner.jspf',
                    # 'private/inner.jspx',
                    'private/inner.jspinc',
                    'private/inner.jspold',
                    'private/inner.old',
                    'private/inner_backup.jsp',
                    'private/inner_bak.jsp',
                    'private/old_inner.jsp'
                ],
                vulnerable_absolute: [
                    'WEB-INF.7z',
                    'WEB-INF.rar',
                    'WEB-INF.tar',
                    'WEB-INF.zip'
                ]
            }
        }
    end

    easy_test
end
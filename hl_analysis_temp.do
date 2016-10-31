asd***** TABLE 4: In-Text Citations

clear all

use "/home/FUQUA/hl200/S Projects/Patent Reverse Citation/honggil/builds/patent_cite_build_us_v6_sample_min_loc_intext.dta"


* medical tecn
keep if (citing_ipc_class_symbol_4 == "A61L" | citing_ipc_class_symbol_4 == "A61J" | citing_ipc_class_symbol_4 == "A61H" | citing_ipc_class_symbol_4 == "A61C" | citing_ipc_class_symbol_4 == "A61N" | citing_ipc_class_symbol_4 == "A61B" | citing_ipc_class_symbol_4 == "A61G" | citing_ipc_class_symbol_4 == "H05G" | citing_ipc_class_symbol_4 == "A61F" | citing_ipc_class_symbol_4 == "A61M" | citing_ipc_class_symbol_4 == "A61D")


* computer technology
keep if (citing_ipc_class_symbol_4 == "G11C" | citing_ipc_class_symbol_4 == "G06E" | citing_ipc_class_symbol_4 == "G10L" | citing_ipc_class_symbol_4 == "G06J" | citing_ipc_class_symbol_4 == "G06N" | citing_ipc_class_symbol_4 == "G06G" | citing_ipc_class_symbol_4 == "G06M" | citing_ipc_class_symbol_4 == "G06F" | citing_ipc_class_symbol_4 == "G06D" | citing_ipc_class_symbol_4 == "G06C" | citing_ipc_class_symbol_4 == "G06T" | citing_ipc_class_symbol_4 == "G06K")


* telecommunications
keep if (citing_ipc_class_symbol_4 == "H01P" | citing_ipc_class_symbol_4 == "H04B" | citing_ipc_class_symbol_4 == "H04J" | citing_ipc_class_symbol_4 == "H04M" | citing_ipc_class_symbol_4 == "H04Q" | citing_ipc_class_symbol_4 == "G08C" | citing_ipc_class_symbol_4 == "H04H" | citing_ipc_class_symbol_4 == "H04K" | citing_ipc_class_symbol_4 == "H01Q")

keep if cited_publn_year < 2000

areg cite lgeo, abs(cited_appln_id) cluster(cited_appln_id)

areg cite lgeo lgeo_nolearn nolearn, abs(cited_appln_id) cluster(cited_appln_id)

areg cite lgeo lgeo_nolearn nolearn if xcites4 == 1, abs(cited_appln_id) cluster(cited_appln_id)

areg cite lgeo lgeo_nolearn nolearn if xcites4 == 2, abs(cited_appln_id) cluster(cited_appln_id)

areg cite lgeo lgeo_nolearn nolearn if xcites4 == 3, abs(cited_appln_id) cluster(cited_appln_id)

areg cite lgeo lgeo_nolearn nolearn if xcites4 == 4, abs(cited_appln_id) cluster(cited_appln_id)



********** Robustness

* Case 1
areg cite lgeo lgeo_nolearn nolearn if (cite == 0 & lag_flag_year == 0) | (cite == 1 & lag_flag_year == 0) | (citing_appln_filing_date == effect_citing_date & cited_publn_date == effect_cited_date & effect_citing_year_d < effect_cited_year_d), ab(cited_appln_id) cluster(cited_appln_id)
outreg2 using "/home/FUQUA/hl200/S Projects/Patent Reverse Citation/honggil/results/v6_aug_inv/v6_aug_inv_t4.xls", replace drop() nocons ctitle() bdec(3) tdec(3) sdec(3) rdec(3) alpha(.01, .05) title ("Table 4: Robustness") addnote(Notes:)

areg cite lgeo lgeo_nolearn nolearn if (cite == 0 & lag_flag_year == 0) | (cite == 1 & lag_flag_year == 0) | (citing_appln_filing_date == effect_citing_date & cited_publn_date == effect_cited_date & effect_citing_year_d < effect_cited_year_d & xcites4==1), ab(cited_appln_id) cluster(cited_appln_id)
outreg2 using "/home/FUQUA/hl200/S Projects/Patent Reverse Citation/honggil/results/v6_aug_inv/v6_aug_inv_t4.xls", append drop() nocons ctitle() bdec(3) tdec(3) sdec(3) rdec(3) alpha(.01, .05) title ("Table 4: Robustness") addnote(Notes:)

areg cite lgeo lgeo_nolearn nolearn if (cite == 0 & lag_flag_year == 0) | (cite == 1 & lag_flag_year == 0) | (citing_appln_filing_date == effect_citing_date & cited_publn_date == effect_cited_date & effect_citing_year_d < effect_cited_year_d & xcites4==2), ab(cited_appln_id) cluster(cited_appln_id)
outreg2 using "/home/FUQUA/hl200/S Projects/Patent Reverse Citation/honggil/results/v6_aug_inv/v6_aug_inv_t4.xls", append drop() nocons ctitle() bdec(3) tdec(3) sdec(3) rdec(3) alpha(.01, .05) title ("Table 4: Robustness") addnote(Notes:)

areg cite lgeo lgeo_nolearn nolearn if (cite == 0 & lag_flag_year == 0) | (cite == 1 & lag_flag_year == 0) | (citing_appln_filing_date == effect_citing_date & cited_publn_date == effect_cited_date & effect_citing_year_d < effect_cited_year_d & xcites4==3), ab(cited_appln_id) cluster(cited_appln_id)
outreg2 using "/home/FUQUA/hl200/S Projects/Patent Reverse Citation/honggil/results/v6_aug_inv/v6_aug_inv_t4.xls", append drop() nocons ctitle() bdec(3) tdec(3) sdec(3) rdec(3) alpha(.01, .05) title ("Table 4: Robustness") addnote(Notes:)

areg cite lgeo lgeo_nolearn nolearn if (cite == 0 & lag_flag_year == 0) | (cite == 1 & lag_flag_year == 0) | (citing_appln_filing_date == effect_citing_date & cited_publn_date == effect_cited_date & effect_citing_year_d < effect_cited_year_d & xcites4==4), ab(cited_appln_id) cluster(cited_appln_id)
outreg2 using "/home/FUQUA/hl200/S Projects/Patent Reverse Citation/honggil/results/v6_aug_inv/v6_aug_inv_t4.xls", append drop() nocons ctitle() bdec(3) tdec(3) sdec(3) rdec(3) alpha(.01, .05) title ("Table 4: Robustness") addnote(Notes:)


* Case 2
areg cite lgeo lgeo_nolearn nolearn if (cite == 0 & lag_flag_year == 0) | (cite == 1 & lag_flag_year == 0) | ((citing_appln_filing_date != effect_citing_date | cited_publn_date != effect_cited_date) & effect_citing_year_d < effect_cited_year_d & citing_appln_filing_date >= cited_publn_date), ab(cited_appln_id) cluster(cited_appln_id)
outreg2 using "/home/FUQUA/hl200/S Projects/Patent Reverse Citation/honggil/results/v6_aug_inv/v6_aug_inv_t4.xls", append drop() nocons ctitle() bdec(3) tdec(3) sdec(3) rdec(3) alpha(.01, .05) title ("Table 4: Robustness") addnote(Notes:)

areg cite lgeo lgeo_nolearn nolearn if (cite == 0 & lag_flag_year == 0) | (cite == 1 & lag_flag_year == 0) | ((citing_appln_filing_date != effect_citing_date | cited_publn_date != effect_cited_date) & effect_citing_year_d < effect_cited_year_d & citing_appln_filing_date >= cited_publn_date & xcites4==1), ab(cited_appln_id) cluster(cited_appln_id)
outreg2 using "/home/FUQUA/hl200/S Projects/Patent Reverse Citation/honggil/results/v6_aug_inv/v6_aug_inv_t4.xls", append drop() nocons ctitle() bdec(3) tdec(3) sdec(3) rdec(3) alpha(.01, .05) title ("Table 4: Robustness") addnote(Notes:)

areg cite lgeo lgeo_nolearn nolearn if (cite == 0 & lag_flag_year == 0) | (cite == 1 & lag_flag_year == 0) | ((citing_appln_filing_date != effect_citing_date | cited_publn_date != effect_cited_date) & effect_citing_year_d < effect_cited_year_d & citing_appln_filing_date >= cited_publn_date & xcites4==2), ab(cited_appln_id) cluster(cited_appln_id)
outreg2 using "/home/FUQUA/hl200/S Projects/Patent Reverse Citation/honggil/results/v6_aug_inv/v6_aug_inv_t4.xls", append drop() nocons ctitle() bdec(3) tdec(3) sdec(3) rdec(3) alpha(.01, .05) title ("Table 4: Robustness") addnote(Notes:)

areg cite lgeo lgeo_nolearn nolearn if (cite == 0 & lag_flag_year == 0) | (cite == 1 & lag_flag_year == 0) | ((citing_appln_filing_date != effect_citing_date | cited_publn_date != effect_cited_date) & effect_citing_year_d < effect_cited_year_d & citing_appln_filing_date >= cited_publn_date & xcites4==3), ab(cited_appln_id) cluster(cited_appln_id)
outreg2 using "/home/FUQUA/hl200/S Projects/Patent Reverse Citation/honggil/results/v6_aug_inv/v6_aug_inv_t4.xls", append drop() nocons ctitle() bdec(3) tdec(3) sdec(3) rdec(3) alpha(.01, .05) title ("Table 4: Robustness") addnote(Notes:)

areg cite lgeo lgeo_nolearn nolearn if (cite == 0 & lag_flag_year == 0) | (cite == 1 & lag_flag_year == 0) | ((citing_appln_filing_date != effect_citing_date | cited_publn_date != effect_cited_date) & effect_citing_year_d < effect_cited_year_d & citing_appln_filing_date >= cited_publn_date & xcites4==4), ab(cited_appln_id) cluster(cited_appln_id)
outreg2 using "/home/FUQUA/hl200/S Projects/Patent Reverse Citation/honggil/results/v6_aug_inv/v6_aug_inv_t4.xls", append drop() nocons ctitle() bdec(3) tdec(3) sdec(3) rdec(3) alpha(.01, .05) title ("Table 4: Robustness") addnote(Notes:)


* Case 3
areg cite lgeo lgeo_nolearn nolearn if (cite == 0 & lag_flag_year == 0) | (cite == 1 & lag_flag_year == 0) | ((citing_appln_filing_date != effect_citing_date | cited_publn_date != effect_cited_date) & effect_citing_year_d < effect_cited_year_d & citing_appln_filing_date < cited_publn_date), ab(cited_appln_id) cluster(cited_appln_id)
outreg2 using "/home/FUQUA/hl200/S Projects/Patent Reverse Citation/honggil/results/v6_aug_inv/v6_aug_inv_t4.xls", append drop() nocons ctitle() bdec(3) tdec(3) sdec(3) rdec(3) alpha(.01, .05) title ("Table 4: Robustness") addnote(Notes:)

areg cite lgeo lgeo_nolearn nolearn if (cite == 0 & lag_flag_year == 0) | (cite == 1 & lag_flag_year == 0) | ((citing_appln_filing_date != effect_citing_date | cited_publn_date != effect_cited_date) & effect_citing_year_d < effect_cited_year_d & citing_appln_filing_date < cited_publn_date & xcites4==1), ab(cited_appln_id) cluster(cited_appln_id)
outreg2 using "/home/FUQUA/hl200/S Projects/Patent Reverse Citation/honggil/results/v6_aug_inv/v6_aug_inv_t4.xls", append drop() nocons ctitle() bdec(3) tdec(3) sdec(3) rdec(3) alpha(.01, .05) title ("Table 4: Robustness") addnote(Notes:)

areg cite lgeo lgeo_nolearn nolearn if (cite == 0 & lag_flag_year == 0) | (cite == 1 & lag_flag_year == 0) | ((citing_appln_filing_date != effect_citing_date | cited_publn_date != effect_cited_date) & effect_citing_year_d < effect_cited_year_d & citing_appln_filing_date < cited_publn_date & xcites4==2), ab(cited_appln_id) cluster(cited_appln_id)
outreg2 using "/home/FUQUA/hl200/S Projects/Patent Reverse Citation/honggil/results/v6_aug_inv/v6_aug_inv_t4.xls", append drop() nocons ctitle() bdec(3) tdec(3) sdec(3) rdec(3) alpha(.01, .05) title ("Table 4: Robustness") addnote(Notes:)

areg cite lgeo lgeo_nolearn nolearn if (cite == 0 & lag_flag_year == 0) | (cite == 1 & lag_flag_year == 0) | ((citing_appln_filing_date != effect_citing_date | cited_publn_date != effect_cited_date) & effect_citing_year_d < effect_cited_year_d & citing_appln_filing_date < cited_publn_date & xcites4==3), ab(cited_appln_id) cluster(cited_appln_id)
outreg2 using "/home/FUQUA/hl200/S Projects/Patent Reverse Citation/honggil/results/v6_aug_inv/v6_aug_inv_t4.xls", append drop() nocons ctitle() bdec(3) tdec(3) sdec(3) rdec(3) alpha(.01, .05) title ("Table 4: Robustness") addnote(Notes:)

areg cite lgeo lgeo_nolearn nolearn if (cite == 0 & lag_flag_year == 0) | (cite == 1 & lag_flag_year == 0) | ((citing_appln_filing_date != effect_citing_date | cited_publn_date != effect_cited_date) & effect_citing_year_d < effect_cited_year_d & citing_appln_filing_date < cited_publn_date & xcites4==4), ab(cited_appln_id) cluster(cited_appln_id)
outreg2 using "/home/FUQUA/hl200/S Projects/Patent Reverse Citation/honggil/results/v6_aug_inv/v6_aug_inv_t4.xls", append drop() nocons ctitle() bdec(3) tdec(3) sdec(3) rdec(3) alpha(.01, .05) title ("Table 4: Robustness") addnote(Notes:)

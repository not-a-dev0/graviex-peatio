module Private
  class AssetsController < BaseController
    skip_before_action :auth_member!, only: [:index]

    def index
      @btc_proof   = Proof.current :btc
      @gio_proof   = Proof.current :gio
      @doge_proof   = Proof.current :doge
      @ltc_proof   = Proof.current :ltc
      @eth_proof   = Proof.current :eth
      @psd_proof   = Proof.current :psd
      @phc_proof   = Proof.current :phc
      @xgc_proof   = Proof.current :xgc
      @dev_proof   = Proof.current :dev
      @pbs_proof   = Proof.current :pbs
      @din_proof   = Proof.current :din
      @adv_proof   = Proof.current :adv
      @dv7_proof   = Proof.current :dv7
      @jew_proof   = Proof.current :jew
      @argo_proof   = Proof.current :argo
      @esco_proof   = Proof.current :esco
      @neet_proof   = Proof.current :neet
      @xylo_proof   = Proof.current :xylo
      @steep_proof   = Proof.current :steep
      @bitg_proof   = Proof.current :bitg
      @crft_proof   = Proof.current :crft
      @env_proof   = Proof.current :env
      @sng_proof   = Proof.current :sng
      @nyc_proof   = Proof.current :nyc
      @zoc_proof   = Proof.current :zoc
      @btcz_proof   = Proof.current :btcz
      @ytn_proof   = Proof.current :ytn
      @yic_proof   = Proof.current :yic
      @tlp_proof   = Proof.current :tlp
      @pwc_proof   = Proof.current :pwc
      @shnd_proof   = Proof.current :shnd
      @lmn_proof   = Proof.current :lmn
      @kec_proof   = Proof.current :kec
      @abs_proof   = Proof.current :abs
      @suppo_proof   = Proof.current :suppo
      @linda_proof   = Proof.current :linda
      @hight_proof   = Proof.current :hight
      @bls_proof   = Proof.current :bls
      @tokc_proof   = Proof.current :tokc
      @elp_proof   = Proof.current :elp
      @zex_proof   = Proof.current :zex
      @rlc_proof   = Proof.current :rlc
      @lucky_proof   = Proof.current :lucky
      @ich_proof   = Proof.current :ich
      @mmb_proof   = Proof.current :mmb
      @pnx_proof   = Proof.current :pnx
      @mix_proof   = Proof.current :mix
      @kreds_proof   = Proof.current :kreds
      @bkt_proof   = Proof.current :bkt
      @snx_proof   = Proof.current :snx
      @giro_proof   = Proof.current :giro
      @onex_proof   = Proof.current :onex
      @pushi_proof   = Proof.current :pushi
      @vrt_proof   = Proof.current :vrt
      @zaca_proof   = Proof.current :zaca
      @xhm_proof   = Proof.current :xhm
      @xar_proof   = Proof.current :xar
      @rupx_proof   = Proof.current :rupx
      @frm_proof   = Proof.current :frm
      @men_proof   = Proof.current :men
      @mun_proof   = Proof.current :mun
      @onemc_proof   = Proof.current :onemc
      @alp_proof   = Proof.current :alp
      @zel_proof   = Proof.current :zel
      @amx_proof   = Proof.current :amx
      @pew_proof   = Proof.current :pew
      @fsc_proof   = Proof.current :fsc
      @sln_proof   = Proof.current :sln
      @usx_proof   = Proof.current :usx
      @bsx_proof   = Proof.current :bsx
      @eot_proof   = Proof.current :eot
      @xap_proof   = Proof.current :xap
      @miac_proof   = Proof.current :miac
      @kc_proof   = Proof.current :kc
      @arhm_proof   = Proof.current :arhm
      @olmp_proof   = Proof.current :olmp
      @onz_proof   = Proof.current :onz
      @agn_proof   = Proof.current :agn
      @crz_proof   = Proof.current :crz
      @enix_proof   = Proof.current :enix
      @snc_proof   = Proof.current :snc
      @quaz_proof   = Proof.current :quaz
      @scriv_proof   = Proof.current :scriv
      @ethf_proof   = Proof.current :ethf
      @arepa_proof   = Proof.current :arepa
      @sub1x_proof   = Proof.current :sub1x
      @cheese_proof   = Proof.current :cheese
      @jiyo_proof   = Proof.current :jiyo
      @pyro_proof   = Proof.current :pyro
      @roe_proof   = Proof.current :roe
      @citr_proof   = Proof.current :citr
      @xen_proof   = Proof.current :xen
      @edl_proof   = Proof.current :edl
      @cru_proof   = Proof.current :cru
      @ndc_proof   = Proof.current :ndc
      @zls_proof   = Proof.current :zls
      @proton_proof   = Proof.current :proton
      @krait_proof   = Proof.current :krait
      @aln_proof   = Proof.current :aln
      @bcp_proof   = Proof.current :bcp
      @xmx_proof   = Proof.current :xmx
      @ida_proof   = Proof.current :ida
      @unify_proof   = Proof.current :unify
      @and_proof   = Proof.current :and
      @vig_proof   = Proof.current :vig
      @peps_proof   = Proof.current :peps
      @vizz_proof   = Proof.current :vizz
      @mon_proof   = Proof.current :mon
      @lunex_proof   = Proof.current :lunex
      @pruf_proof   = Proof.current :pruf
      @want_proof   = Proof.current :want
      #proof

      if current_user
        @btc_account = current_user.accounts.with_currency(:btc).first
        @gio_account = current_user.accounts.with_currency(:gio).first
        @doge_account = current_user.accounts.with_currency(:doge).first
        @ltc_account = current_user.accounts.with_currency(:ltc).first
        @eth_account = current_user.accounts.with_currency(:eth).first
        @psd_account = current_user.accounts.with_currency(:psd).first
        @phc_account = current_user.accounts.with_currency(:phc).first
        @xgc_account = current_user.accounts.with_currency(:xgc).first
        @dev_account = current_user.accounts.with_currency(:dev).first
        @pbs_account = current_user.accounts.with_currency(:pbs).first
        @din_account = current_user.accounts.with_currency(:din).first
        @adv_account = current_user.accounts.with_currency(:adv).first
        @dv7_account = current_user.accounts.with_currency(:dv7).first
        @jew_account = current_user.accounts.with_currency(:jew).first
        @argo_account = current_user.accounts.with_currency(:argo).first
        @esco_account = current_user.accounts.with_currency(:esco).first
        @neet_account = current_user.accounts.with_currency(:neet).first
        @xylo_account = current_user.accounts.with_currency(:xylo).first
        @steep_account = current_user.accounts.with_currency(:steep).first
        @bitg_account = current_user.accounts.with_currency(:bitg).first
        @crft_account = current_user.accounts.with_currency(:crft).first
        @env_account = current_user.accounts.with_currency(:env).first
        @sng_account = current_user.accounts.with_currency(:sng).first
        @nyc_account = current_user.accounts.with_currency(:nyc).first
        @zoc_account = current_user.accounts.with_currency(:zoc).first
        @btcz_account = current_user.accounts.with_currency(:btcz).first
        @ytn_account = current_user.accounts.with_currency(:ytn).first
        @yic_account = current_user.accounts.with_currency(:yic).first
        @tlp_account = current_user.accounts.with_currency(:tlp).first
        @pwc_account = current_user.accounts.with_currency(:pwc).first
        @shnd_account = current_user.accounts.with_currency(:shnd).first
        @lmn_account = current_user.accounts.with_currency(:lmn).first
        @kec_account = current_user.accounts.with_currency(:kec).first
        @abs_account = current_user.accounts.with_currency(:abs).first
        @suppo_account = current_user.accounts.with_currency(:suppo).first
        @linda_account = current_user.accounts.with_currency(:linda).first
        @hight_account = current_user.accounts.with_currency(:hight).first
        @bls_account = current_user.accounts.with_currency(:bls).first
        @tokc_account = current_user.accounts.with_currency(:tokc).first
        @elp_account = current_user.accounts.with_currency(:elp).first
        @zex_account = current_user.accounts.with_currency(:zex).first
        @rlc_account = current_user.accounts.with_currency(:rlc).first
        @lucky_account = current_user.accounts.with_currency(:lucky).first
        @ich_account = current_user.accounts.with_currency(:ich).first
        @mmb_account = current_user.accounts.with_currency(:mmb).first
        @pnx_account = current_user.accounts.with_currency(:pnx).first
        @mix_account = current_user.accounts.with_currency(:mix).first
        @kreds_account = current_user.accounts.with_currency(:kreds).first
        @bkt_account = current_user.accounts.with_currency(:bkt).first
        @snx_account = current_user.accounts.with_currency(:snx).first
        @giro_account = current_user.accounts.with_currency(:giro).first
        @onex_account = current_user.accounts.with_currency(:onex).first
        @pushi_account = current_user.accounts.with_currency(:pushi).first
        @vrt_account = current_user.accounts.with_currency(:vrt).first
        @zaca_account = current_user.accounts.with_currency(:zaca).first
        @xhm_account = current_user.accounts.with_currency(:xhm).first
        @xar_account = current_user.accounts.with_currency(:xar).first
        @rupx_account = current_user.accounts.with_currency(:rupx).first
        @frm_account = current_user.accounts.with_currency(:frm).first
        @men_account = current_user.accounts.with_currency(:men).first
        @mun_account = current_user.accounts.with_currency(:mun).first
        @onemc_account = current_user.accounts.with_currency(:onemc).first
        @alp_account = current_user.accounts.with_currency(:alp).first
        @zel_account = current_user.accounts.with_currency(:zel).first
        @amx_account = current_user.accounts.with_currency(:amx).first
        @pew_account = current_user.accounts.with_currency(:pew).first
        @fsc_account = current_user.accounts.with_currency(:fsc).first
        @sln_account = current_user.accounts.with_currency(:sln).first
        @usx_account = current_user.accounts.with_currency(:usx).first
        @bsx_account = current_user.accounts.with_currency(:bsx).first
        @eot_account = current_user.accounts.with_currency(:eot).first
        @xap_account = current_user.accounts.with_currency(:xap).first
        @miac_account = current_user.accounts.with_currency(:miac).first
        @kc_account = current_user.accounts.with_currency(:kc).first
        @arhm_account = current_user.accounts.with_currency(:arhm).first
        @olmp_account = current_user.accounts.with_currency(:olmp).first
        @onz_account = current_user.accounts.with_currency(:onz).first
        @agn_account = current_user.accounts.with_currency(:agn).first
        @crz_account = current_user.accounts.with_currency(:crz).first
        @enix_account = current_user.accounts.with_currency(:enix).first
        @snc_account = current_user.accounts.with_currency(:snc).first
        @quaz_account = current_user.accounts.with_currency(:quaz).first
        @scriv_account = current_user.accounts.with_currency(:scriv).first
        @ethf_account = current_user.accounts.with_currency(:ethf).first
        @arepa_account = current_user.accounts.with_currency(:arepa).first
        @sub1x_account = current_user.accounts.with_currency(:sub1x).first
        @cheese_account = current_user.accounts.with_currency(:cheese).first
        @jiyo_account = current_user.accounts.with_currency(:jiyo).first
        @pyro_account = current_user.accounts.with_currency(:pyro).first
        @roe_account = current_user.accounts.with_currency(:roe).first
        @citr_account = current_user.accounts.with_currency(:citr).first
        @xen_account = current_user.accounts.with_currency(:xen).first
        @edl_account = current_user.accounts.with_currency(:edl).first
        @cru_account = current_user.accounts.with_currency(:cru).first
        @ndc_account = current_user.accounts.with_currency(:ndc).first
        @zls_account = current_user.accounts.with_currency(:zls).first
        @proton_account = current_user.accounts.with_currency(:proton).first
        @krait_account = current_user.accounts.with_currency(:krait).first
        @aln_account = current_user.accounts.with_currency(:aln).first
        @bcp_account = current_user.accounts.with_currency(:bcp).first
        @xmx_account = current_user.accounts.with_currency(:xmx).first
        @ida_account = current_user.accounts.with_currency(:ida).first
        @unify_account = current_user.accounts.with_currency(:unify).first
        @and_account = current_user.accounts.with_currency(:and).first
        @vig_account = current_user.accounts.with_currency(:vig).first
        @peps_account = current_user.accounts.with_currency(:peps).first
        @vizz_account = current_user.accounts.with_currency(:vizz).first
        @mon_account = current_user.accounts.with_currency(:mon).first
        @lunex_account = current_user.accounts.with_currency(:lunex).first
        @pruf_account = current_user.accounts.with_currency(:pruf).first
        @want_account = current_user.accounts.with_currency(:want).first
        #account
      end
    end

    def partial_tree
      account    = current_user.accounts.with_currency(params[:id]).first
      @timestamp = Proof.with_currency(params[:id]).last.timestamp
      @json      = account.partial_tree.to_json.html_safe
      respond_to do |format|
        format.js
      end
    end

  end
end

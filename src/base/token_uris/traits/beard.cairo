// let make the face of the profile svg

pub mod beard {
    use karst::base::utils::byte_array_extra::FeltTryIntoByteArray;

    #[derive(Drop)]
    enum BeardVariants {
        Beard1, // 1
        Beard2, // 2
        Beard3, // 3
        Beard4, // 4
        Beard5, // 5
    }

    pub fn beardSvgStart() -> ByteArray {
        getBeardvariant(BeardVariants::Beard3)
    }

    pub fn getBeardvariant(glassVariant: BeardVariants) -> ByteArray {
        let mut decidedBeard: ByteArray = Default::default();
        match glassVariant {
            BeardVariants::Beard1 => {
                decidedBeard =
                    "<path d=\"M27.142 22.56c.14.264.276.51.4.764a.8.8 0 0 1 .077.4c-.01.14-.078.2-.22.131-.103-.05-.204-.105-.328-.169.129.32.295.59.443.868.062.117.164.137.278.133.697-.026 1.237-.331 1.63-.889.116-.165.207-.348.323-.513.057-.082.122-.192.266-.104.064.04.106-.029.145-.068.116-.121.221-.249.298-.4.093-.184.163-.38.36-.504.068-.043.088-.16.127-.246.042-.09.065-.19.199-.203.08-.007.082-.091.095-.154.043-.204.083-.409.128-.613.015-.07.032-.148.122-.16.09-.014.161.032.207.1a.7.7 0 0 1 .136.426c-.042.737.03 1.466.156 2.193.054.313-.137.59-.494.73-.144.058-.224.127-.257.285-.058.286-.223.472-.504.63-.301.17-.594.399-.817.674-.282.349-.586.666-.986.884-.087.047-.142.123-.202.196-.235.282-.546.456-.885.587-.088.034-.195.08-.28.04-.299-.144-.541.022-.79.127a6 6 0 0 1-1.614.414c-.56.068-1.122.125-1.679.226-.497.09-.997.055-1.485-.08-.323-.089-.66-.112-.973-.26-.503-.239-.8-.62-.91-1.138-.049-.232-.063-.47-.15-.694-.171-.441-.036-.87.063-1.295.11-.473.164-.939.113-1.429-.101-.955.465-1.663 1.246-2.087.117-.063.227-.039.319.06.164.175.343.232.608.238.42.01.852-.098 1.267.051.054.02.1-.008.149-.025a1 1 0 0 0 .346-.187c.381-.356.82-.378 1.293-.231.134.041.268.079.353.203.038.056.1.106.162.104.225-.007.347.139.485.277.09.092.194.177.337.191.073.008.108.069.147.121zm-1.37 2.62c.26-.103.39-.308.499-.548.169-.372.257-.779.526-1.129-.738-.357-1.504-.559-2.27-.744-.055.106.055.166-.028.27-.42.056-.847.005-1.237-.233-.377-.23-.693-.23-1.03.045-.256.209-.563.337-.87.318-.354-.023-.473.192-.64.396-.072.089-.074.173-.033.28.129.329.244.663.37.994.046.124.081.26.202.334.072-.028.092-.077.111-.122.066-.156.184-.172.326-.118.376.141.765.19 1.167.197a6.4 6.4 0 0 0 1.764-.235.68.68 0 0 1 .587.085c.158.104.31.252.556.21\" style=\"display:inline;stroke-width:.0437198\"/>"
            },
            BeardVariants::Beard2 => {
                decidedBeard =
                    "<path d=\"M28.654 23.265c.035.126.075.235.05.351-.03.138-.114.194-.289.12-.158-.067-.312-.14-.5-.225.232.29.529.513.654.83.296.746.17 1.467-.09 2.202-.4 1.122-1.394 1.872-2.608 2.493-.322.164-.718.13-1.078.129a66 66 0 0 1-3.238-.066c-.32-.017-.578-.111-.646-.384a.27.27 0 0 0-.08-.125c-.51-.465-.626-1.033-.712-1.603-.099-.654-.232-1.31-.12-1.971.046-.278.088-.556.14-.832.02-.109.02-.196-.145-.24-.109-.03-.139-.113-.169-.192-.148-.39-.169-.789-.135-1.19.022-.258.18-.473.451-.63a2.9 2.9 0 0 1 1.235-.368c.332-.026.589.074.71.32.097.199.292.27.548.285.504.032.95-.09 1.37-.289.067-.031.134-.066.19-.107.695-.508 1.496-.42 2.313-.238.094.021.187.03.283.038.718.056 1.275.287 1.52.835.125.277.228.56.346.857m-7.352-.122c-.069.007-.16.04-.203.019-.216-.107-.318.018-.439.109q-.16.12-.26.274c-.03.048-.053.094-.015.151.25.376.387.784.583 1.175.065.132.13.27.326.35l.068-.167c.067-.165.264-.258.48-.216 1.029.198 2.052.14 3.071-.038.114-.02.22-.017.336-.012.345.014.537.203.765.355.202.136.357.142.554.003.2-.14.364-.3.48-.493.241-.403.388-.837.721-1.23-.872-.405-1.824-.544-2.805-.5a2.3 2.3 0 0 1-1.021-.173 1.15 1.15 0 0 0-.651-.096c-.213.033-.44.046-.654.026a1.04 1.04 0 0 0-.723.178 2.2 2.2 0 0 1-.613.285m.416 3.509c.242.031.192-.124.228-.215.02-.05-.015-.108-.1-.118-.088-.01-.131.036-.139.091a1 1 0 0 0 .011.242\" style=\"display:inline;stroke-width:.0459248\"/>"
            },
            BeardVariants::Beard3 => {
                decidedBeard =
                    "<path d=\"M24.845 22.954c-.121.05-.121.05-.123.233-.435.06-.85-.014-1.251-.165-.105-.04-.203-.093-.305-.14-.35-.161-.68-.128-.977.1a1.65 1.65 0 0 1-1.149.337c-.078-.005-.148.008-.2.06-.203.2-.422.39-.485.67-.02.09-.02.201-.173.2-.158-.002-.232-.088-.26-.216-.101-.454-.096-.903.114-1.333.232-.474.604-.844 1.092-1.123.192-.11.355-.104.524.043.17.15.364.192.626.196.466.009.935-.102 1.404.028.179.05.355-.085.516-.165.127-.064.239-.152.358-.23a.76.76 0 0 1 .55-.108c.816.113 1.44.518 2.056.978.429.32.658.73.881 1.158a.4.4 0 0 1 .035.082c.041.154.123.344-.028.45-.129.09-.286-.052-.41-.123-.853-.488-1.804-.736-2.795-.932\" style=\"display:inline;stroke-width:.046342\"/>"
            },
            BeardVariants::Beard4 => {
                decidedBeard =
                    "<path d=\"M27.944 22.654c.168.261.325.508.436.777.016.037.037.073.045.111.037.161.122.355-.027.47-.134.104-.278-.057-.414-.111q-.067-.028-.138-.061c-.028.088.03.139.07.179.532.524.608 1.195.685 1.856.063.54.006 1.08-.126 1.611-.087.35-.297.587-.643.758-.473.233-.97.36-1.5.396-.85.06-1.69.178-2.532.295-.983.136-1.935-.061-2.873-.313-.107-.029-.21-.065-.322-.083-.422-.071-.62-.262-.703-.658-.162-.784-.119-1.566.02-2.348q.092-.517.176-1.035c.012-.07.037-.163-.05-.193-.258-.09-.259-.303-.287-.494-.146-.966.452-2.024 1.385-2.478q.254-.123.449.052c.206.183.42.24.727.243.482.005.969-.101 1.458.03.223.06.473-.086.626-.232.501-.478 1.079-.358 1.6-.139.483.204.98.434 1.352.815.183.187.453.296.586.552m-5.073.031a.97.97 0 0 0-.687.225 1.68 1.68 0 0 1-1.192.355c-.093-.006-.173.012-.232.078q-.197.22-.384.447c-.041.05-.069.109-.03.177.226.404.337.848.521 1.267.056.128.11.26.263.328.127-.286.263-.38.5-.311.95.274 1.906.23 2.856.032.55-.113 1.063-.165 1.536.2.16.123.345.062.502-.04.171-.113.284-.266.38-.442.235-.43.332-.916.645-1.312-.47-.318-2.473-.917-2.667-.798-.039.066.052.138-.009.204-.312.1-.946.022-1.346-.165-.199-.094-.39-.204-.656-.245\" style=\"display:inline;stroke-width:.0496822\"/>"
            },
            BeardVariants::Beard5 => {
                decidedBeard =
                    "<path d=\"M29.273 23.428c.06-.09.119-.102.156-.005.297.787.515 1.594.34 2.487a.6.6 0 0 1-.083.21c-.377.598-.703 1.263-1.26 1.635-.075.05-.12.142-.172.224-.214.338-.497.547-.805.707-.09.046-.198.107-.28.057-.264-.163-.482.01-.701.135-.506.289-1.03.46-1.583.529-.517.064-1.03.186-1.544.28-.453.085-.903.06-1.344-.1-.308-.11-.629-.136-.927-.321-.47-.293-.743-.763-.845-1.394-.045-.273-.056-.556-.136-.82-.162-.536-.03-1.058.047-1.582q.022-.143.054-.282c.098-.432.125-.854.072-1.315-.14-1.236.35-2.12 1.128-2.695.124-.092.228-.06.33.077a.62.62 0 0 0 .532.275c.398.016.806-.118 1.2.06.058.025.11-.007.158-.038.103-.067.22-.122.302-.22.358-.43.764-.464 1.206-.284.125.05.25.096.33.247.035.068.092.13.15.128.221-.009.332.197.47.361.084.1.173.19.298.22.146.033.173.238.251.364.263.42.461.892.58 1.412.02.083.027.174.024.26-.005.169-.066.25-.2.164-.097-.062-.192-.128-.308-.205.115.398.28.73.421 1.077.055.134.15.147.247.143.566-.022 1.03-.317 1.4-.863.191-.28.277-.65.492-.928m-5.063-.21c-.397.01-.767-.074-1.117-.352-.294-.234-.611-.239-.89.091-.233.278-.532.425-.826.4-.365-.03-.455.305-.62.565-.036.06-.027.128-.007.2.135.469.266.94.401 1.409.032.11.064.23.167.272.206-.345.206-.344.55-.213q.06.022.12.037a3.3 3.3 0 0 0 1.934-.02c.487-.15.96-.292 1.385.203.063.073.132.057.209.007.184-.12.317-.284.406-.531.18-.498.274-1.041.534-1.516-.692-.426-1.403-.678-2.142-.91.044.271.044.271-.104.358\" style=\"display:inline;stroke-width:.0466134\"/>"
            }
        }
        decidedBeard
    }
}

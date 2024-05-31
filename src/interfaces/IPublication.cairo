// *************************************************************************
//                              INTERFACE of KARST PUBLICATIONS
// *************************************************************************
use starknet::ContractAddress;
use karst::base::types::{PostParams, ReferencePubParams, PublicationType, Publication};

#[starknet::interface]
pub trait IKarstPublications<T> {
    fn post(
        ref self: T,
        contentURI: ByteArray,
        profile_address: ContractAddress,
        profile_contract_address: ContractAddress,
        user: ContractAddress
    ) -> u256;
    fn comment(
        ref self: T,
        profile_address: ContractAddress,
        content_URI: ByteArray,
        pointed_profile_address: ContractAddress,
        pointed_pub_id: u256,
        profile_contract_address: ContractAddress,
    ) -> u256;
    // fn get_content_uri(self: @T, user: ContractAddress) -> ByteArray;
    // fn get_pub_type(self: @T, user: ContractAddress) -> Option<PublicationType>;
    fn get_publication(self: @T, user: ContractAddress, pubIdAssigned: u256) -> Publication;
    fn get_publication_type(
        self: @T, profile_address: ContractAddress, pub_id_assigned: u256
    ) -> PublicationType;
    fn get_publication_content_uri(
        self: @T, profile_address: ContractAddress, pub_id: u256
    ) -> ByteArray;
}

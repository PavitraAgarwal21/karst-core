// *************************************************************************
//                              TYPES
// *************************************************************************
use starknet::ContractAddress;

// /**
// * @notice A struct containing token follow-related data.
// *
// * @param followed_profile_address The ID of the profile being followed.
// * @param follower_profile_address The ID of the profile following.
// * @param followTimestamp The timestamp of the current follow, if a profile is using the token to
// follow.
// * @param block_status true if follower is blocked, false otherwise
// */
#[derive(Drop, Serde, starknet::Store)]
pub struct FollowData {
    pub followed_profile_address: ContractAddress,
    pub follower_profile_address: ContractAddress,
    pub follow_timestamp: u64,
    pub block_status: bool,
}

// * @notice A struct containing profile data.
// * profile_address The profile ID of a karst profile
// * profile_owner The address that created the profile_address
// * @param pub_count The number of publications made to this profile.
// * @param metadataURI MetadataURI is used to store the profile's metadata, for example: displayed
// name, description, interests, etc.
// * @param follow_nft profile follow nft token contract
#[derive(Drop, Serde, starknet::Store)]
pub struct Profile {
    pub profile_address: ContractAddress,
    pub profile_owner: ContractAddress,
    pub pub_count: u256,
    pub metadata_URI: ByteArray,
    pub follow_nft: ContractAddress
}

// /**
// * @notice A struct containing publication data.
// *
// * @param pointed_profile_address The profile token ID to point the publication to.
// * @param pointed_pub_id The publication ID to point the publication to.
// * These are used to implement the "reference" feature of the platform and is used in:
// * - Mirrors
// * - Comments
// * - Quotes
// * @param content_URI The URI to set for the content of publication (can be ipfs, arweave, http,
// etc).
// * @param pub_Type The type of publication, can be Nonexistent, Post, Comment, Mirror or Quote.
// * @param root_profile_address The profile ID of the root post (to determine if comments/quotes
// and mirrors come from it).
// * @param root_pub_id The publication ID of the root post (to determine if comments/quotes and
// mirrors come from it).
// */
#[derive(Debug, Drop, Serde, starknet::Store)]
pub struct Publication {
    pub pointed_profile_address: ContractAddress,
    pub pointed_pub_id: u256,
    pub content_URI: ByteArray,
    pub pub_Type: PublicationType,
    pub root_profile_address: ContractAddress,
    pub root_pub_id: u256,
    pub upvote: u256,
    pub downvote: u256,
    pub channel_id: felt252,
    pub collect_nft: ContractAddress,
    pub tipped_amount: u256
}

// /**
// * @notice An enum specifically used in a helper function to easily retrieve the publication type
// for integrations.
// *
// * @param Nonexistent An indicator showing the queried publication does not exist.
// * @param Post A standard post, having an URI, and no pointer to another publication.
// * @param Comment A comment, having an URI, and a pointer to another publication.
// * @param Mirror A mirror, having a pointer to another publication, but no URI.
// */
#[derive(Debug, Drop, Serde, starknet::Store, Clone, PartialEq)]
pub enum PublicationType {
    Nonexistent,
    Post,
    Comment,
    Repost,
}

// /**
// * @notice A struct containing the parameters supplied to the post method
// *
// * @param contentURI URI pointing to the post content
// * @param profile_address profile address that owns the post
// */
#[derive(Drop, Serde, starknet::Store, Clone)]
pub struct PostParams {
    pub content_URI: ByteArray,
    pub profile_address: ContractAddress,
    pub channel_id: felt252
}

// /**
// * @notice A struct containing the parameters supplied to the comment method
// *
// * @param profile_address profile address that owns the comment
// * @param contentURI URI pointing to the comment content
// * @param pointed_profile_address profile address of the referenced publication/comment
// * @param pointed_pub_id ID of the pointed publication
// */
#[derive(Drop, Serde, starknet::Store, Clone)]
pub struct CommentParams {
    pub profile_address: ContractAddress,
    pub content_URI: ByteArray,
    pub pointed_profile_address: ContractAddress,
    pub pointed_pub_id: u256,
    pub reference_pub_type: PublicationType,
}


#[derive(Drop, Serde, starknet::Store)]
pub struct ReferencePubParams {
    pub profile_address: ContractAddress,
    pub content_URI: ByteArray,
    pub pointed_profile_address: ContractAddress,
    pub pointed_pub_id: u256
}

// /**
// * @notice A struct containing the parameters required for the `mirror()` function.
// *
// * @param profile_address The address of the profile to publish to.
// * @param metadata_URI the URI containing metadata attributes to attach to this mirror
// publication.
// * @param pointed_profile_id The profile address to point the mirror to.
// * @param pointed_pub_id The publication ID to point the mirror to.
// */
#[derive(Drop, Serde, starknet::Store, Clone)]
pub struct RepostParams {
    pub profile_address: ContractAddress,
    pub pointed_profile_address: ContractAddress,
    pub pointed_pub_id: u256,
}

// /**
// * @notice A struct containing the parameters required for the `quote()` function.
// *
// * @param profile_address The address of the profile to publish to.
// * @param content_URI The URI to set for this new publication.
// * @param pointed_profile_address The profile address of the publication author that is quoted.
// * @param pointed_pub_id The publication ID that is quoted.
// */
#[derive(Drop, Serde, starknet::Store, Clone)]
pub struct QuoteParams {
    pub profile_address: ContractAddress,
    pub content_URI: ByteArray,
    pub pointed_profile_address: ContractAddress,
    pub pointed_pub_id: u256,
    pub reference_pub_type: PublicationType
}


// /**
// * @notice A struct containing the parameters which define channel
// *
// * @param channel_id unquie id to each channel
// * @param channel_owner primary owner of channel , who create channel
// * @param channel_metadata_uri contain channel metadata
// * @param channel_nft_address contain channel token gated nfts
// * @param channel_total_members total number of member in the channel
// * @param channel_censorship cencorship of channel
// * @param channel_premium_status
// */
#[derive(Drop, Serde, Clone, starknet::Store)]
pub struct channelParams {
    pub channel_id: u256,
    pub channel_owner: ContractAddress,
    pub channel_metadata_uri: ByteArray,
    pub channel_nft_address: ContractAddress,
    pub channel_total_members: u256,
    pub channel_censorship: bool,
}


#[derive(Drop, Serde, Clone, starknet::Store)]
pub struct channelMember {
    pub profile: ContractAddress,
    pub channel_id: u256,
    pub total_publications: u256,
    pub channel_token_id: u256,
    pub ban_status: bool,
}

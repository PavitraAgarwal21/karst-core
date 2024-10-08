// *************************************************************************
//                            ERRORS
// *************************************************************************
pub mod Errors {
    pub const NOT_PROFILE_OWNER: felt252 = 'Karst: not profile owner!';
    pub const ALREADY_MINTED: felt252 = 'Karst: user already minted!';
    pub const INITIALIZED: felt252 = 'Karst: already initialized!';
    pub const HUB_RESTRICTED: felt252 = 'Karst: caller is not Hub!';
    pub const FOLLOWING: felt252 = 'Karst: user already following!';
    pub const NOT_FOLLOWING: felt252 = 'Karst: user not following!';
    pub const BLOCKED_STATUS: felt252 = 'Karst: user is blocked!';
    pub const INVALID_POINTED_PUBLICATION: felt252 = 'Karst: invalid pointed pub!';
    pub const INVALID_OWNER: felt252 = 'Karst: caller is not owner!';
    pub const INVALID_PROFILE: felt252 = 'Karst: profile is not owner!';
    pub const HANDLE_ALREADY_LINKED: felt252 = 'Karst: handle already linked!';
    pub const HANDLE_DOES_NOT_EXIST: felt252 = 'Karst: handle does not exist!';
    pub const INVALID_LOCAL_NAME: felt252 = 'Karst: invalid local name!';
    pub const UNSUPPORTED_PUB_TYPE: felt252 = 'Karst: unsupported pub type!';
    pub const INVALID_PROFILE_ADDRESS: felt252 = 'Karst: invalid profile address!';
    pub const SELF_FOLLOWING: felt252 = 'Karst: self follow is forbidden';
    pub const ALREADY_REACTED: felt252 = 'Karst: already react to post!';
    pub const TOKEN_DOES_NOT_EXIST: felt252 = 'Karst: token_id does not exist!';
    pub const NOT_CHANNEL_OWNER: felt252 = 'Channel: not channel owner';
    pub const NOT_CHANNEL_MODERATOR: felt252 = 'Channel: not channel moderator';
    pub const NOT_CHANNEL_MEMBER: felt252 = 'Channel: not channel member';
    pub const BANNED_FROM_CHANNEL: felt252 = 'Channel: banned from channel';
    pub const CHANNEL_HAS_NO_MEMBER: felt252 = 'Channel has no members';
    pub const UNAUTHORIZED_ACESS: felt252 = 'Karst : Unauthorized access';
}

#[starknet::interface]
trait ISimpleSubdomainDistribution<TContractState> {
    fn claim_domain_back(ref self: TContractState, domain: Span<felt252>,);
    fn register(ref self: TContractState, domain: Span<felt252>, receiver_token_id: u128);
    fn open_registration(ref self: TContractState);
    fn close_registration(ref self: TContractState);
    fn change_admin(ref self: TContractState, address: starknet::ContractAddress);
    fn is_registration_open(self: @TContractState) -> bool;
    fn upgrade(ref self: TContractState, impl_hash: starknet::class_hash::ClassHash);
}

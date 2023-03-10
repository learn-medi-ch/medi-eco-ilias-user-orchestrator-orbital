<?php

namespace MediEco\IliasUserOrchestratorOrbital\Core\Domain\Messages;
use MediEco\IliasUserOrchestratorOrbital\Core\Domain\ValueObjects;

class CreateOrUpdateUser implements OutgoingMessage
{
    private function __construct(
        public ValueObjects\UserId $userId,
        public ValueObjects\UserData $userData,
        public array $additionalFields
    ) {

    }

    public static function new(
        ValueObjects\UserId $userId,
        ValueObjects\UserData $userData,
        array $additionalFields
    ): self  {
        return new self(
            ...get_defined_vars()
        );
    }

    public function getName() : OutgoingMessageName
    {
        return OutgoingMessageName::CREATE_OR_UPDATE_USER;
    }

    public function getAddress() : string
    {
        return  OutgoingMessageName::CREATE_OR_UPDATE_USER->value;
    }
}
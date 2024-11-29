# RecipientType

A RecipientType is basically a pointer to a logical grouping of multiple enties having the same RecipientBehaviour.
This value is required to be able to message with an entity/topic since it holds the Schema for the messages over the wire.
Without the schema, you cannot ensure that the messages sent are what the receiver expects.
Ideally, you can share this definition between the caller and the receiver.

To import and use `RecipientType` from the "RecipientType" module:

ts
import \* as RecipientType from "@effect/cluster/RecipientType"
// Can be accessed like this
RecipientType.RecipientType
undefined

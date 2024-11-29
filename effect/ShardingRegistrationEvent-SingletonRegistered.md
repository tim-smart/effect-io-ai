# SingletonRegistered

Constructs a new event that occurs when a new Singleton is registered.

To import and use `SingletonRegistered` from the "ShardingRegistrationEvent" module:

ts
import \* as ShardingRegistrationEvent from "@effect/cluster/ShardingRegistrationEvent"
// Can be accessed like this
ShardingRegistrationEvent.SingletonRegistered
undefined

**Signature**

```ts
export declare function SingletonRegistered(name: string): ShardingRegistrationEvent
```

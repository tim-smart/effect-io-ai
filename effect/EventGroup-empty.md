# empty

An `EventGroup` is a collection of `Event`s. You can use an `EventGroup` to
represent a portion of your domain.

The events can be implemented later using the `EventLog.group` api.

To import and use `empty` from the "EventGroup" module:

```ts
import * as EventGroup from "@effect/experimental/EventGroup"
// Can be accessed like this
EventGroup.empty
```

**Signature**

```ts
export declare const empty: EventGroup<never>
```
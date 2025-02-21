# Tag

Creates a unique tag for a dependency, embedding the service's methods as
static properties.

**Details**

This function allows you to define a `Tag` for a service or dependency in
your application. The `Tag` not only acts as an identifier but also provides
direct access to the service's methods via static properties. This makes it
easier to access and use the service in your code without manually managing
contexts.

In the example below, the fields of the service (in this case, the `notify`
method) are turned into static properties of the Notifications class, making
it easier to access them.

To import and use `Tag` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.Tag
```

**Example**

```ts
import { Effect } from "effect"

class Notifications extends Effect.Tag("Notifications")<
  Notifications,
  { readonly notify: (message: string) => Effect.Effect<void> }
>() {}

// Create an effect that depends on the Notifications service
const action = Notifications.notify("Hello, world!")
```

**Signature**

```ts
export declare const Tag: <const Id extends string>(
  id: Id
) => <Self, Type extends Tag.AllowedType>() => Context.TagClass<Self, Id, Type> &
  (Type extends Record<PropertyKey, any> ? Tag.Proxy<Self, Type> : {}) & {
    use: <X>(
      body: (_: Type) => X
    ) => [X] extends [Effect<infer A, infer E, infer R>]
      ? Effect<A, E, R | Self>
      : [X] extends [PromiseLike<infer A>]
        ? Effect<A, Cause.UnknownException, Self>
        : Effect<X, never, Self>
  }
```

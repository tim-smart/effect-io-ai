# taggedScoped

Tags each metric in a scope with a the specific tag.

To import and use `taggedScoped` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.taggedScoped
```

**Signature**

```ts
export declare const taggedScoped: (key: string, value: string) => Effect<Scope.Scope, never, void>
```

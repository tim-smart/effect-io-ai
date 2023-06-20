# validate

Returns a config that describes the same structure as this one, but which
performs validation during loading.

To import and use `validate` from the "Config" module:

```ts
import * as Config from '@effect/io/Config'

// Can be accessed like this
Config.validate
```

**Signature**

```ts
export declare const validate: {
  <A, B extends A>(message: string, f: Refinement<A, B>): (self: Config<A>) => Config<B>
  <A>(message: string, f: Predicate<A>): (self: Config<A>) => Config<A>
  <A, B extends A>(self: Config<A>, message: string, f: Refinement<A, B>): Config<B>
  <A>(self: Config<A>, message: string, f: Predicate<A>): Config<A>
}
```

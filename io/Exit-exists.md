# exists

Executes the predicate on the value of the specified exit if it is a
`Success`, otherwise returns `false`.

To import and use `exists` from the "Exit" module:

```ts
import * as Exit from '@effect/io/Exit'

// Can be accessed like this
Exit.exists
```

**Signature**

```ts
export declare const exists: {
  <A>(predicate: Predicate<A>): <E>(self: Exit<E, A>) => boolean
  <E, A>(self: Exit<E, A>, predicate: Predicate<A>): boolean
}
```

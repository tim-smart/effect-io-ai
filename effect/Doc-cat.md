# cat

The `cat` combinator lays out two documents separated by nothing.

To import and use `cat` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.cat
undefined

**Signature**

```ts
export declare const cat: {
  <B>(that: Doc<B>): <A>(self: Doc<A>) => Doc<B | A>
  <A, B>(self: Doc<A>, that: Doc<B>): Doc<A | B>
}
```

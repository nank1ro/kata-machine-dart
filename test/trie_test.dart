import 'package:kata_machine/trie.dart';
import 'package:test/test.dart';

void main() {
  test('trie', () {
    final trie = Trie();
    trie.insert('foo');
    trie.insert('fool');
    trie.insert('foolish');
    trie.insert('bar');

    expect(trie.find('fo'), unorderedEquals(['foo', 'fool', 'foolish']));

    trie.delete('fool');

    expect(trie.find('fo'), unorderedEquals(['foo', 'foolish']));
  });
}

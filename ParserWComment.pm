## This isn't entirely practical, since I would also need a version of
## HTML::TreeBuilder that used this in place of HTML::Parser.  So give up
## on getting comments for now, unless I hack HTML::Parser itself.

package HTML::ParserWComment;
# Like HTML::Parser, but includes comments

require HTML::Element;

require HTML::TreeBuilder;
@ISA = qw(HTML::TreeBuilder HTML::Parser);

sub comment
{
  my ($self, $comment) = @_;
  my $e = HTML::Element->new('!--', comment => $comment);
  $self->insert_element($e);
}


# �K�v�ȃA�Z���u���̒ǉ�
Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName WindowsBase

# XAML�t�@�C����ǂݍ���
[xml]$xaml = @'
<Window x:Class="System.Windows.Window"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="N83Apps �C���X�g�[�� �E�B�U�[�h" Height="511" Width="484">
    <Grid Margin="0,0,0,2">
        <Label Content="N83Apps �C���X�g�[��  �E�B�U�[�h�ւ悤�����B�����ł̓C���X�g�[���̃I�v�V������ݒ�ł��܂��B" HorizontalAlignment="Left" Height="26" VerticalAlignment="Top" Width="464" Margin="10,10,0,0" RenderTransformOrigin="0.496,0.719"/>
        <Button Name="next" Content="����" HorizontalAlignment="Left" Height="48" Margin="367,426,0,0" VerticalAlignment="Top" Width="100"/>
        <Image HorizontalAlignment="Left" Height="210" Margin="10,41,0,0" VerticalAlignment="Top" Width="458" Source="ht"/>
        <Button Name="cancel" Content="�L�����Z��" HorizontalAlignment="Left" Height="48" Margin="259,426,0,0" VerticalAlignment="Top" Width="100"/>
    </Grid>
</Window>
'@

$reader = (New-Object System.Xml.XmlNodeReader $xaml)
$window = [Windows.Markup.XamlReader]::Load($reader)

# �C�x���g�n���h���̐ݒ�
$nextButton = $window.FindName("next")
$nextButton.Add_Click({
    [System.Windows.MessageBox]::Show("���փ{�^�����N���b�N����܂���!")
})

# �L�����Z���{�^���̃C�x���g�n���h��
$cancelButton = $window.FindName("cancel")
$cancelButton.Add_Click({
    $window.Close()
})

# �t�H�[����\��
$window.ShowDialog()
